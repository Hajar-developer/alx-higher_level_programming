#include "lists.h"
#include <stdlib.h>
/**
 * insert_node - inserts a number into a sorted singly linked list
 * @head: pointer to pointer of first node of listint_t list
 * @number: integer to be included in new node
 * Return: address of the new element or NULL if it fails
 */

listint_t *insert_node(listint_t **head, int number)
{
listint_t *newNode, *firstNode;

firstNode = *head;

newNode = malloc(sizeof(listint_t));
if (newNode == NULL)
return (NULL);
newNode->n = number;

if (*head == NULL || (*head)->n > number)
{
newNode->next = *head;
*head = newNode;
return (newNode);
}

while (firstNode->next != NULL)
{
if ((firstNode->next)->n >= number)
{
newNode->next = firstNode->next;
firstNode->next = newNode;
return (newNode);
}
firstNode = firstNode->next;
}
firstNode->next = newNode;
newNode->next = NULL;
return (newNode);
}

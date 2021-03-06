#ifndef CLIENTARRAY_H
#define CLIENTARRAY_H
#include <string>
using namespace std;
#include "Client.h"
#define MAX_ARR_SIZE 128

class ClientArray
{
public:
    ClientArray(){
        num_clients = 0;
    }
    ~ClientArray();
    void addClient(Client *c);
    void deleteList();
    Client* getClientAt(int);
    int getNumClients();
    string getClientName(int);
    string getClientUsername(int);
    string getClientPassword(int);
    string getClientPhoneNumber(int);
    string getClientAddress(int);
    string getClientPostalCode(int);
    string getClientProvince(int);
    int * getClientPreferences(int);
    int getClientDatabase_id(int);

private:
    Client * array[MAX_ARR_SIZE];
    int num_clients;
};

#endif // CLIENTARRAY_H

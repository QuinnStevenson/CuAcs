#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QtSql>
#include <QtDebug>
#include <QFileInfo>
#include <QMainWindow>
#include <QSqlQuery>
#include <QSqlDatabase>
#include <QtCore>
#include <QtGui>
#include "Animal.h"
#include "Array.h"
#include "Client.h"
#include "ClientArray.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void on_view_button_clicked();

    void on_login_button_clicked();

    void on_view_animals_clicked();
    void on_view_button_2_clicked();

    void on_view_client_clicked();
    void on_view_client_2_clicked();

    void on_add_button_clicked();
    void on_add_button_2_clicked();

    void on_add_client_clicked();
    void on_add_client_2_clicked();

    void on_submit_clicked();

private:
    Ui::MainWindow *ui;
    void ConnectDatabase();
    void QueryDatabase();
    void AddToTable();
    void AddToTableClient();
    void AddClientToTable();
    void PrepareForms();
    void AddAnimal();
    void AddClient();
    void show_animals();
    void show_clients();

    Array list;
    ClientArray clientList;

};

#endif // MAINWINDOW_H

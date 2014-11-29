#include <QApplication>
#include <QKeySequence>
#include <iostream>
#include <QWidget>
#include "qxtglobalshortcut.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QxtGlobalShortcut * shortcut = new QxtGlobalShortcut(QKeySequence("alt+p"));
    QWidget a;
    a.show();
    QObject::connect(shortcut, &QxtGlobalShortcut::activated, &a, &QWidget::close);

    return app.exec();
}

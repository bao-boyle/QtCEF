import QtQuick 2.4
import QtQuick.Controls 1.3
import QtChromium 1.0

ApplicationWindow
{
    id: mainwindow
    title: qsTr("QtChromium Test")
    width: 640
    height: 480
    visible: true

    Column
    {
        anchors.fill: parent
        spacing: 5

        Row
        {
            id: row
            width: parent.width
            height: tfurl.height
            spacing: 5

            TextField
            {
                id: tfurl
                width: parent.width - btn.width
            }

            Button
            {
                id: btn
                width: 50
                text: "Go"

                onClicked: {
                    chromiumwebview.url = tfurl.text;
                }
            }
        }

        ChromiumWebView
        {
            id: chromiumwebview
            width: parent.width
            height: parent.height - row.height

            onTitleChanged: {
                mainwindow.title = chromiumwebview.title;
            }
        }
    }
}
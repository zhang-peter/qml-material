import QtQuick 2.0
import QtQuick.Layouts 1.1
import Material 0.1
import Material.ListItems 0.1 as ListItem
import Material.Extras 0.1

ColumnLayout {

    Dialog {
        id: datePickerDialog
        hasActions: true
        contentMargins: 0
        floatingActions: true

        DatePicker {
            frameVisible: false
            dayAreaBottomMargin : Units.dp(48)
        }

    }

    Dialog {
        id: landscapeDatePickerDialog
        hasActions: true
        contentMargins: 0
        floatingActions: true

        DatePicker {
            frameVisible: false
            dayAreaBottomMargin : Units.dp(48)
            isLandscape: true
        }

    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: Units.dp(16)

        Button {
            Layout.alignment: Qt.AlignCenter
            text: "Show DatePicker Dialog"
            elevation: 1
            onClicked: {
                datePickerDialog.show()
            }
        }

        Button {
            Layout.alignment: Qt.AlignCenter
            text: "Show Landscape DatePicker Dialog"
            elevation: 1
            onClicked: {
                landscapeDatePickerDialog.show()
            }
        }

        DatePicker {
            Layout.alignment: Qt.AlignCenter
        }

        DatePicker {
            Layout.alignment: Qt.AlignCenter
            isLandscape: true
        }
    }
}

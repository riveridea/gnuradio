/********************************************************************************
** Form generated from reading UI file 'spectrumdisplayform.ui'
**
** Created: Tue Jun 5 17:04:25 2012
**      by: Qt User Interface Compiler version 4.8.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SPECTRUMDISPLAYFORM_H
#define UI_SPECTRUMDISPLAYFORM_H

#include <FrequencyDisplayPlot.h>
#include <Qt3Support/Q3MimeSourceFactory>
#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QCheckBox>
#include <QtGui/QComboBox>
#include <QtGui/QFrame>
#include <QtGui/QGridLayout>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QSpinBox>
#include <QtGui/QTabWidget>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>
#include <SpectrumGUIClass.h>
#include <TimeDomainDisplayPlot.h>
#include <WaterfallDisplayPlot.h>
#include <QtGui/QRegExpValidator>
#include <vector>
#include "qwt_wheel.h"

QT_BEGIN_NAMESPACE

class Ui_SpectrumDisplayForm
{
public:
    QGridLayout *gridLayout;
    QComboBox *FFTSizeComboBox;
    QLabel *FFTSizeLabel;
    QCheckBox *UseRFFrequenciesCheckBox;
    QHBoxLayout *horizontalLayout;
    QLabel *WindowLbl;
    QComboBox *WindowComboBox;
    QTabWidget *SpectrumTypeTab;
    QWidget *FrequencyPage;
    QVBoxLayout *verticalLayout;
    QVBoxLayout *verticalLayout_2;
    QFrame *FrequencyPlotDisplayFrame;
    QGridLayout *gridLayout_2;
    QCheckBox *MaxHoldCheckBox;
    QCheckBox *MinHoldCheckBox;
    QPushButton *MaxHoldResetBtn;
    QLabel *AvgLabel;
    QPushButton *MinHoldResetBtn;
    QSpinBox *AvgLineEdit;
    QSpacerItem *horizontalSpacer_2;
    QWidget *WaterfallPage;
    QGridLayout *gridLayout_3;
    QLabel *textLabel1;
    QwtWheel *WaterfallMaximumIntensityWheel;
    QLabel *WaterfallMaximumIntensityLabel;
    QFrame *WaterfallPlotDisplayFrame;
    QwtWheel *WaterfallMinimumIntensityWheel;
    QLabel *WaterfallMinimumIntensityLabel;
    QPushButton *WaterfallAutoScaleBtn;
    QComboBox *WaterfallIntensityComboBox;
    QWidget *TimeDomainPage;
    QGridLayout *gridLayout_4;
    QFrame *TimeDomainDisplayFrame;
    QWidget *ConstellationPage;
    QGridLayout *gridLayout_5;
    QFrame *ConstellationDisplayFrame;

    void setupUi(QWidget *SpectrumDisplayForm)
    {
        if (SpectrumDisplayForm->objectName().isEmpty())
            SpectrumDisplayForm->setObjectName(QString::fromUtf8("SpectrumDisplayForm"));
        SpectrumDisplayForm->resize(712, 560);
        gridLayout = new QGridLayout(SpectrumDisplayForm);
        gridLayout->setSpacing(6);
        gridLayout->setContentsMargins(11, 11, 11, 11);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        FFTSizeComboBox = new QComboBox(SpectrumDisplayForm);
        FFTSizeComboBox->setObjectName(QString::fromUtf8("FFTSizeComboBox"));
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(FFTSizeComboBox->sizePolicy().hasHeightForWidth());
        FFTSizeComboBox->setSizePolicy(sizePolicy);
        FFTSizeComboBox->setMaximumSize(QSize(120, 16777215));

        gridLayout->addWidget(FFTSizeComboBox, 1, 3, 1, 1);

        FFTSizeLabel = new QLabel(SpectrumDisplayForm);
        FFTSizeLabel->setObjectName(QString::fromUtf8("FFTSizeLabel"));
        FFTSizeLabel->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        FFTSizeLabel->setWordWrap(false);

        gridLayout->addWidget(FFTSizeLabel, 1, 2, 1, 1);

        UseRFFrequenciesCheckBox = new QCheckBox(SpectrumDisplayForm);
        UseRFFrequenciesCheckBox->setObjectName(QString::fromUtf8("UseRFFrequenciesCheckBox"));

        gridLayout->addWidget(UseRFFrequenciesCheckBox, 1, 0, 1, 1);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(6);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        WindowLbl = new QLabel(SpectrumDisplayForm);
        WindowLbl->setObjectName(QString::fromUtf8("WindowLbl"));
        sizePolicy.setHeightForWidth(WindowLbl->sizePolicy().hasHeightForWidth());
        WindowLbl->setSizePolicy(sizePolicy);
        WindowLbl->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        WindowLbl->setWordWrap(false);

        horizontalLayout->addWidget(WindowLbl);

        WindowComboBox = new QComboBox(SpectrumDisplayForm);
        WindowComboBox->setObjectName(QString::fromUtf8("WindowComboBox"));
        sizePolicy.setHeightForWidth(WindowComboBox->sizePolicy().hasHeightForWidth());
        WindowComboBox->setSizePolicy(sizePolicy);
        WindowComboBox->setMinimumSize(QSize(120, 0));
        WindowComboBox->setMaximumSize(QSize(120, 16777215));
        QFont font;
        font.setPointSize(9);
        WindowComboBox->setFont(font);

        horizontalLayout->addWidget(WindowComboBox);


        gridLayout->addLayout(horizontalLayout, 3, 0, 1, 1);

        SpectrumTypeTab = new QTabWidget(SpectrumDisplayForm);
        SpectrumTypeTab->setObjectName(QString::fromUtf8("SpectrumTypeTab"));
        FrequencyPage = new QWidget();
        FrequencyPage->setObjectName(QString::fromUtf8("FrequencyPage"));
        verticalLayout = new QVBoxLayout(FrequencyPage);
        verticalLayout->setSpacing(6);
        verticalLayout->setContentsMargins(11, 11, 11, 11);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setSpacing(6);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        FrequencyPlotDisplayFrame = new QFrame(FrequencyPage);
        FrequencyPlotDisplayFrame->setObjectName(QString::fromUtf8("FrequencyPlotDisplayFrame"));
        QSizePolicy sizePolicy1(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(FrequencyPlotDisplayFrame->sizePolicy().hasHeightForWidth());
        FrequencyPlotDisplayFrame->setSizePolicy(sizePolicy1);
        FrequencyPlotDisplayFrame->setMinimumSize(QSize(617, 400));
        FrequencyPlotDisplayFrame->setSizeIncrement(QSize(1, 1));
        FrequencyPlotDisplayFrame->setFrameShape(QFrame::NoFrame);
        FrequencyPlotDisplayFrame->setFrameShadow(QFrame::Plain);

        verticalLayout_2->addWidget(FrequencyPlotDisplayFrame);

        gridLayout_2 = new QGridLayout();
        gridLayout_2->setSpacing(6);
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        MaxHoldCheckBox = new QCheckBox(FrequencyPage);
        MaxHoldCheckBox->setObjectName(QString::fromUtf8("MaxHoldCheckBox"));
        MaxHoldCheckBox->setChecked(false);

        gridLayout_2->addWidget(MaxHoldCheckBox, 1, 0, 1, 1);

        MinHoldCheckBox = new QCheckBox(FrequencyPage);
        MinHoldCheckBox->setObjectName(QString::fromUtf8("MinHoldCheckBox"));
        MinHoldCheckBox->setChecked(false);

        gridLayout_2->addWidget(MinHoldCheckBox, 2, 0, 1, 1);

        MaxHoldResetBtn = new QPushButton(FrequencyPage);
        MaxHoldResetBtn->setObjectName(QString::fromUtf8("MaxHoldResetBtn"));
        sizePolicy.setHeightForWidth(MaxHoldResetBtn->sizePolicy().hasHeightForWidth());
        MaxHoldResetBtn->setSizePolicy(sizePolicy);
        MaxHoldResetBtn->setMinimumSize(QSize(25, 0));

        gridLayout_2->addWidget(MaxHoldResetBtn, 1, 1, 1, 1);

        AvgLabel = new QLabel(FrequencyPage);
        AvgLabel->setObjectName(QString::fromUtf8("AvgLabel"));
        sizePolicy.setHeightForWidth(AvgLabel->sizePolicy().hasHeightForWidth());
        AvgLabel->setSizePolicy(sizePolicy);
        AvgLabel->setMinimumSize(QSize(62, 0));
        AvgLabel->setAlignment(Qt::AlignCenter);
        AvgLabel->setWordWrap(false);

        gridLayout_2->addWidget(AvgLabel, 1, 3, 1, 1);

        MinHoldResetBtn = new QPushButton(FrequencyPage);
        MinHoldResetBtn->setObjectName(QString::fromUtf8("MinHoldResetBtn"));

        gridLayout_2->addWidget(MinHoldResetBtn, 2, 1, 1, 1);

        AvgLineEdit = new QSpinBox(FrequencyPage);
        AvgLineEdit->setObjectName(QString::fromUtf8("AvgLineEdit"));

        gridLayout_2->addWidget(AvgLineEdit, 2, 3, 1, 1);

        horizontalSpacer_2 = new QSpacerItem(200, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer_2, 1, 2, 1, 1);


        verticalLayout_2->addLayout(gridLayout_2);


        verticalLayout->addLayout(verticalLayout_2);

        SpectrumTypeTab->addTab(FrequencyPage, QString());
        WaterfallPage = new QWidget();
        WaterfallPage->setObjectName(QString::fromUtf8("WaterfallPage"));
        gridLayout_3 = new QGridLayout(WaterfallPage);
        gridLayout_3->setSpacing(6);
        gridLayout_3->setContentsMargins(11, 11, 11, 11);
        gridLayout_3->setObjectName(QString::fromUtf8("gridLayout_3"));
        textLabel1 = new QLabel(WaterfallPage);
        textLabel1->setObjectName(QString::fromUtf8("textLabel1"));
        textLabel1->setMaximumSize(QSize(100, 16777215));
        textLabel1->setWordWrap(false);

        gridLayout_3->addWidget(textLabel1, 0, 0, 1, 1);

        WaterfallMaximumIntensityWheel = new QwtWheel(WaterfallPage);
        WaterfallMaximumIntensityWheel->setObjectName(QString::fromUtf8("WaterfallMaximumIntensityWheel"));
        WaterfallMaximumIntensityWheel->setMinimumSize(QSize(200, 0));
        WaterfallMaximumIntensityWheel->setMouseTracking(true);
        WaterfallMaximumIntensityWheel->setFocusPolicy(Qt::WheelFocus);
        WaterfallMaximumIntensityWheel->setValid(true);
        WaterfallMaximumIntensityWheel->setTotalAngle(200);
        WaterfallMaximumIntensityWheel->setViewAngle(20);
        WaterfallMaximumIntensityWheel->setMass(0);

        gridLayout_3->addWidget(WaterfallMaximumIntensityWheel, 0, 2, 1, 1);

        WaterfallMaximumIntensityLabel = new QLabel(WaterfallPage);
        WaterfallMaximumIntensityLabel->setObjectName(QString::fromUtf8("WaterfallMaximumIntensityLabel"));
        WaterfallMaximumIntensityLabel->setMaximumSize(QSize(100, 16777215));
        WaterfallMaximumIntensityLabel->setWordWrap(false);

        gridLayout_3->addWidget(WaterfallMaximumIntensityLabel, 0, 3, 1, 1);

        WaterfallPlotDisplayFrame = new QFrame(WaterfallPage);
        WaterfallPlotDisplayFrame->setObjectName(QString::fromUtf8("WaterfallPlotDisplayFrame"));
        WaterfallPlotDisplayFrame->setMinimumSize(QSize(617, 338));
        WaterfallPlotDisplayFrame->setFrameShape(QFrame::NoFrame);
        WaterfallPlotDisplayFrame->setFrameShadow(QFrame::Plain);

        gridLayout_3->addWidget(WaterfallPlotDisplayFrame, 1, 0, 1, 4);

        WaterfallMinimumIntensityWheel = new QwtWheel(WaterfallPage);
        WaterfallMinimumIntensityWheel->setObjectName(QString::fromUtf8("WaterfallMinimumIntensityWheel"));
        WaterfallMinimumIntensityWheel->setMinimumSize(QSize(200, 0));
        WaterfallMinimumIntensityWheel->setValid(true);
        WaterfallMinimumIntensityWheel->setTotalAngle(200);
        WaterfallMinimumIntensityWheel->setViewAngle(20);
        WaterfallMinimumIntensityWheel->setMass(0);

        gridLayout_3->addWidget(WaterfallMinimumIntensityWheel, 2, 2, 1, 1);

        WaterfallMinimumIntensityLabel = new QLabel(WaterfallPage);
        WaterfallMinimumIntensityLabel->setObjectName(QString::fromUtf8("WaterfallMinimumIntensityLabel"));
        WaterfallMinimumIntensityLabel->setMaximumSize(QSize(100, 16777215));
        WaterfallMinimumIntensityLabel->setWordWrap(false);

        gridLayout_3->addWidget(WaterfallMinimumIntensityLabel, 2, 3, 1, 1);

        WaterfallAutoScaleBtn = new QPushButton(WaterfallPage);
        WaterfallAutoScaleBtn->setObjectName(QString::fromUtf8("WaterfallAutoScaleBtn"));
        WaterfallAutoScaleBtn->setMaximumSize(QSize(80, 16777215));

        gridLayout_3->addWidget(WaterfallAutoScaleBtn, 2, 0, 1, 2);

        WaterfallIntensityComboBox = new QComboBox(WaterfallPage);
        WaterfallIntensityComboBox->setObjectName(QString::fromUtf8("WaterfallIntensityComboBox"));
        WaterfallIntensityComboBox->setMaximumSize(QSize(100, 16777215));

        gridLayout_3->addWidget(WaterfallIntensityComboBox, 0, 1, 1, 1);

        SpectrumTypeTab->addTab(WaterfallPage, QString());
        TimeDomainPage = new QWidget();
        TimeDomainPage->setObjectName(QString::fromUtf8("TimeDomainPage"));
        gridLayout_4 = new QGridLayout(TimeDomainPage);
        gridLayout_4->setSpacing(6);
        gridLayout_4->setContentsMargins(11, 11, 11, 11);
        gridLayout_4->setObjectName(QString::fromUtf8("gridLayout_4"));
        TimeDomainDisplayFrame = new QFrame(TimeDomainPage);
        TimeDomainDisplayFrame->setObjectName(QString::fromUtf8("TimeDomainDisplayFrame"));
        TimeDomainDisplayFrame->setMinimumSize(QSize(617, 404));
        TimeDomainDisplayFrame->setFrameShape(QFrame::NoFrame);
        TimeDomainDisplayFrame->setFrameShadow(QFrame::Plain);

        gridLayout_4->addWidget(TimeDomainDisplayFrame, 0, 0, 1, 1);

        SpectrumTypeTab->addTab(TimeDomainPage, QString());
        ConstellationPage = new QWidget();
        ConstellationPage->setObjectName(QString::fromUtf8("ConstellationPage"));
        gridLayout_5 = new QGridLayout(ConstellationPage);
        gridLayout_5->setSpacing(6);
        gridLayout_5->setContentsMargins(11, 11, 11, 11);
        gridLayout_5->setObjectName(QString::fromUtf8("gridLayout_5"));
        ConstellationDisplayFrame = new QFrame(ConstellationPage);
        ConstellationDisplayFrame->setObjectName(QString::fromUtf8("ConstellationDisplayFrame"));
        ConstellationDisplayFrame->setMinimumSize(QSize(617, 406));
        ConstellationDisplayFrame->setFrameShape(QFrame::StyledPanel);
        ConstellationDisplayFrame->setFrameShadow(QFrame::Raised);

        gridLayout_5->addWidget(ConstellationDisplayFrame, 0, 0, 1, 1);

        SpectrumTypeTab->addTab(ConstellationPage, QString());

        gridLayout->addWidget(SpectrumTypeTab, 0, 0, 1, 4);

        QWidget::setTabOrder(SpectrumTypeTab, UseRFFrequenciesCheckBox);
        QWidget::setTabOrder(UseRFFrequenciesCheckBox, FFTSizeComboBox);
        QWidget::setTabOrder(FFTSizeComboBox, WaterfallMaximumIntensityWheel);
        QWidget::setTabOrder(WaterfallMaximumIntensityWheel, WaterfallMinimumIntensityWheel);

        retranslateUi(SpectrumDisplayForm);
        QObject::connect(MaxHoldCheckBox, SIGNAL(toggled(bool)), SpectrumDisplayForm, SLOT(MaxHoldCheckBox_toggled(bool)));
        QObject::connect(MaxHoldResetBtn, SIGNAL(clicked()), SpectrumDisplayForm, SLOT(MaxHoldResetBtn_clicked()));
        QObject::connect(MinHoldCheckBox, SIGNAL(toggled(bool)), SpectrumDisplayForm, SLOT(MinHoldCheckBox_toggled(bool)));
        QObject::connect(MinHoldResetBtn, SIGNAL(clicked()), SpectrumDisplayForm, SLOT(MinHoldResetBtn_clicked()));
        QObject::connect(WindowComboBox, SIGNAL(activated(int)), SpectrumDisplayForm, SLOT(WindowTypeChanged(int)));
        QObject::connect(UseRFFrequenciesCheckBox, SIGNAL(toggled(bool)), SpectrumDisplayForm, SLOT(UseRFFrequenciesCB(bool)));
        QObject::connect(WaterfallMaximumIntensityWheel, SIGNAL(valueChanged(double)), SpectrumDisplayForm, SLOT(waterfallMaximumIntensityChangedCB(double)));
        QObject::connect(WaterfallMinimumIntensityWheel, SIGNAL(valueChanged(double)), SpectrumDisplayForm, SLOT(waterfallMinimumIntensityChangedCB(double)));
        QObject::connect(FFTSizeComboBox, SIGNAL(activated(QString)), SpectrumDisplayForm, SLOT(FFTComboBoxSelectedCB(QString)));
        QObject::connect(WaterfallAutoScaleBtn, SIGNAL(clicked()), SpectrumDisplayForm, SLOT(WaterfallAutoScaleBtnCB()));
        QObject::connect(WaterfallIntensityComboBox, SIGNAL(activated(int)), SpectrumDisplayForm, SLOT(WaterfallIntensityColorTypeChanged(int)));
        QObject::connect(SpectrumTypeTab, SIGNAL(currentChanged(int)), SpectrumDisplayForm, SLOT(TabChanged(int)));
        QObject::connect(AvgLineEdit, SIGNAL(valueChanged(int)), SpectrumDisplayForm, SLOT(AvgLineEdit_valueChanged(int)));

        SpectrumTypeTab->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(SpectrumDisplayForm);
    } // setupUi

    void retranslateUi(QWidget *SpectrumDisplayForm)
    {
        SpectrumDisplayForm->setWindowTitle(QApplication::translate("SpectrumDisplayForm", "Spectrum Display", 0, QApplication::UnicodeUTF8));
        FFTSizeComboBox->clear();
        FFTSizeComboBox->insertItems(0, QStringList()
         << QApplication::translate("SpectrumDisplayForm", "1024", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SpectrumDisplayForm", "2048", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SpectrumDisplayForm", "4096", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SpectrumDisplayForm", "8192", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SpectrumDisplayForm", "16384", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SpectrumDisplayForm", "32768", 0, QApplication::UnicodeUTF8)
        );
        FFTSizeLabel->setText(QApplication::translate("SpectrumDisplayForm", "FFT Size:", 0, QApplication::UnicodeUTF8));
        UseRFFrequenciesCheckBox->setText(QApplication::translate("SpectrumDisplayForm", "Display RF Frequencies", 0, QApplication::UnicodeUTF8));
        WindowLbl->setText(QApplication::translate("SpectrumDisplayForm", "Window:", 0, QApplication::UnicodeUTF8));
        WindowComboBox->clear();
        WindowComboBox->insertItems(0, QStringList()
         << QApplication::translate("SpectrumDisplayForm", "Hamming", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SpectrumDisplayForm", "Hann", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SpectrumDisplayForm", "Blackman", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SpectrumDisplayForm", "Rectangular", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SpectrumDisplayForm", "Kaiser", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SpectrumDisplayForm", "Blackman-harris", 0, QApplication::UnicodeUTF8)
        );
        MaxHoldCheckBox->setText(QApplication::translate("SpectrumDisplayForm", "Max Hold", 0, QApplication::UnicodeUTF8));
        MinHoldCheckBox->setText(QApplication::translate("SpectrumDisplayForm", "Min Hold", 0, QApplication::UnicodeUTF8));
        MaxHoldResetBtn->setText(QApplication::translate("SpectrumDisplayForm", "Reset", 0, QApplication::UnicodeUTF8));
        AvgLabel->setText(QApplication::translate("SpectrumDisplayForm", "Average", 0, QApplication::UnicodeUTF8));
        MinHoldResetBtn->setText(QApplication::translate("SpectrumDisplayForm", "Reset", 0, QApplication::UnicodeUTF8));
        SpectrumTypeTab->setTabText(SpectrumTypeTab->indexOf(FrequencyPage), QApplication::translate("SpectrumDisplayForm", "Frequency Display", 0, QApplication::UnicodeUTF8));
        textLabel1->setText(QApplication::translate("SpectrumDisplayForm", "Intensity Display:", 0, QApplication::UnicodeUTF8));
        WaterfallMaximumIntensityLabel->setText(QApplication::translate("SpectrumDisplayForm", "100 dB", 0, QApplication::UnicodeUTF8));
        WaterfallMinimumIntensityLabel->setText(QApplication::translate("SpectrumDisplayForm", "-100 dB", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        WaterfallAutoScaleBtn->setToolTip(QApplication::translate("SpectrumDisplayForm", "Scales the Intensity to the current data extremes.", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        WaterfallAutoScaleBtn->setText(QApplication::translate("SpectrumDisplayForm", "Auto Scale", 0, QApplication::UnicodeUTF8));
        WaterfallIntensityComboBox->clear();
        WaterfallIntensityComboBox->insertItems(0, QStringList()
         << QApplication::translate("SpectrumDisplayForm", "Color", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SpectrumDisplayForm", "White Hot", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SpectrumDisplayForm", "Black Hot", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SpectrumDisplayForm", "Incandescent", 0, QApplication::UnicodeUTF8)
         << QApplication::translate("SpectrumDisplayForm", "User Defined", 0, QApplication::UnicodeUTF8)
        );
        SpectrumTypeTab->setTabText(SpectrumTypeTab->indexOf(WaterfallPage), QApplication::translate("SpectrumDisplayForm", "Waterfall Display", 0, QApplication::UnicodeUTF8));
        SpectrumTypeTab->setTabText(SpectrumTypeTab->indexOf(TimeDomainPage), QApplication::translate("SpectrumDisplayForm", "Time Domain Display", 0, QApplication::UnicodeUTF8));
        SpectrumTypeTab->setTabText(SpectrumTypeTab->indexOf(ConstellationPage), QApplication::translate("SpectrumDisplayForm", "Constellation Display", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class SpectrumDisplayForm: public Ui_SpectrumDisplayForm {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SPECTRUMDISPLAYFORM_H

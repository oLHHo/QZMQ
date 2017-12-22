#ifndef LEONWGT_H
#define LEONWGT_H

#include <QWidget>
#include "../QBGUILIB/LDrawWgt.h"

namespace Ui {
class LeonWgt;
}

class LeonWgt : public LDrawWgt
{
    Q_OBJECT

public:
    explicit LeonWgt(QWidget *parent = 0);
    ~LeonWgt();

    /**
    * @author by LHH
    * @brief 初始化界面
    * @param 无
    * @return void
    */
    void InitUI();

    /**
    * @author by LHH
    * @brief 控件信号的连接
    * @param 无
    * @return void
    */
    void SignalConnects();

private slots:
    /**
    * @author by LHH
    * @brief 启动
    * @param 无
    * @return void
    */
    void OnStartBtn();

private:
    bool m_bStartFlag;

private:
    Ui::LeonWgt *ui;
};

#endif // LEONWGT_H

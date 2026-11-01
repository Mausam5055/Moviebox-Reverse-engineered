package com.cloud.tmc.kernel.proxy.performanceanalyse;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public enum PointAnalyseType implements IPerformanceAnalyseType {
    POINT_START("[Point]:[startPoint]"),
    POINT_RENDER_T1("[Point]:[renderT1Point]"),
    POINT_JS_BRIDGE_READY("[Point]:[jsBridgeReadyPoint]"),
    POINT_RENDER_READY("[Point]:[renderReadyPoint]"),
    POINT_RENDER_T2("[Point]:[renderT2Point]"),
    POINT_WORKER_READY("[Point]:[workerReadyPoint]"),
    POINT_PAGE_OPEN("[Point]:[pageOpenPoint]"),
    POINT_PAGE_CREATE("[Point]:[pageCreatePoint]"),
    POINT_SDK_PV("[Point]:[sdkPVPoint]"),
    POINT_PAGE_PV("[Point]:[pagePVPoint]"),
    POINT_EXIT_MINIAPP("[Point]:[退出miniapp]"),
    POINT_NAV_HOME_PRESSED("[Point]:[点击导航栏Home]"),
    POINT_MORE_ENTER("[Point]:[打开查看更多弹窗]"),
    POINT_EXIT_CLICK("[Point]:[点击退出按钮]"),
    POINT_MORE_EXIT("[Point]:[退出查看更多弹窗]"),
    POINT_SHORT_CUT("[Point]:[创建快捷方式]"),
    POINT_SHARE("[Point]:[分享]"),
    POINT_SHARE_URL("[Point]:[分享 URL]"),
    POINT_SHARE_SAVE("[Point]:[分享-保存]"),
    POINT_REFRESH("[Point]:[刷新]"),
    POINT_ENTER_DEVELOP("[Point]:[进入小程序开发者]"),
    POINT_CLICK_MESSAGE("[Point]:[打开消息界面]"),
    POINT_CLICK_AUTH("[Point]:[打开权限设置]"),
    POINT_CLICK_WIDGET("[Point]:[打开Widget服务页面]"),
    POINT_CLICK_WHATSAPP("[Point]:[打开whatsapp分享]"),
    POINT_CLICK_TELEGRAM("[Point]:[打开telegram分享]"),
    POINT_CLICK_ICON_SHARE("[Point]:[打开顶部iconshare分享]"),
    POINT_CLICK_MC("[Point]:[打开mc页面]"),
    POINT_LAUNCH_MINIAPP_START("[Point]:[冷启动小程序]"),
    POINT_LAUNCH_MINIAPP_HOT_OPEN("[Point]:[热启动小程序]"),
    POINT_DOWNLOAD_V8_START("[Point]:[downloadV8Start]"),
    POINT_DOWNLOAD_V8_SUCCESS("[Point]:[downloadV8Success]"),
    POINT_DOWNLOAD_V8_FAIL("[Point]:[downloadV8Fail]"),
    POINT_CHAIN_START("[Point]:[链路开始]"),
    POINT_CHAIN_END("[Point]:[链路结束]"),
    POINT_APP_CHAIN_START("[Point]:[app链路开始]"),
    POINT_APP_CHAIN_END("[Point]:[app链路结束]"),
    POINT_PAGE_CHAIN_START("[Point]:[page链路开始]"),
    POINT_PAGE_CHAIN_END("[Point]:[page链路结束]"),
    POINT_H5_PAGE_ONFINISHED("[Point]:[h5PageOnFinished]"),
    POINT_CHAIN_INSERT("[Point]:[链路数据插入]"),
    POINT_CHAIN_CLEAR("[Point]:[链路数据清除]"),
    POINT_APP_CHAIN_CLEAR("[Point]:[App链路数据清除]"),
    POINT_APP_CHAIN_INSERT("[Point]:[App链路数据插入]"),
    POINT_APP_CHAIN_FAIL("[Point]:[App链路执行失败]"),
    POINT_PAGE_CHAIN_FAIL("[Point]:[Page链路执行失败]"),
    POINT_PAGE_CHAIN_CLEAR("[Point]:[Page链路数据清除]"),
    POINT_CHECK_WHITESCREEN("[Point]:[检测白屏]"),
    POINT_FPS("[Point]:[异常帧率]"),
    POINT_LOG_ERROR("[Point]:[Error级别日志]"),
    POINT_PRIVACY_AGREEMENT("[Point]:[隐私协议点击]"),
    POINT_GET_PACKAGE_FILE("[Point]:[getPackageFile]"),
    POINT_PACKAGE_UPDATE_START("[Point]:链路升级开始"),
    POINT_PACKAGE_UPDATE_SUCCESS("[Point]:链路升级成功"),
    POINT_PACKAGE_UPDATE_FAIL("[Point]:链路升级失败"),
    POINT_PACKAGE_DOWNLOAD_START("[Point]:小程序包下载开始"),
    POINT_PACKAGE_DOWNLOAD_SUCCESS("[Point]:小程序下载成功"),
    POINT_PACKAGE_DOWNLOAD_FAILED("[Point]:小程序下载失败"),
    POINT_PACKAGE_DOWNLOAD_USER_EXIT("[Point]:下载中，用户主动退出"),
    POINT_MINIAPP_FOREGROUND_TIME("[Point]:[小程序有效使用时长]"),
    POINT_GET_ODID("[Point]:[获取odid]"),
    POINT_HOT_RELOAD("[Point]:[热启动]"),
    POINT_OPEN_PAGE_ACTION("[Point]:[页面打开动作]"),
    POINT_PIN_FOR_LATER_EX("[Point]:稍后再用按钮曝光"),
    POINT_PIN_FOR_LATER_CLICK("[Point]:稍后再用按钮点击"),
    POINT_PIN_FOR_LATER_BANNER_EX("[Point]:稍后再用Taost曝光"),
    POINT_PIN_FOR_LATER_BANNER_CLICK("[Point]:稍后再用Toast点击"),
    POINT_PIN_FOR_LATER_ADD_MC_CLICK("[Point]:MC添加到桌面点击"),
    POINT_PIN_FOR_LATER_ADD_MC_EX("[Point]:MC添加到桌面曝光"),
    POINT_PRIVACY_EX("[Point]:[隐私协议曝光]"),
    POINT_PRIVACY_CLICK("[Point]:[隐私协议点击]"),
    CONSOLE("[Point]:[console]"),
    PRE_REQUEST_HTML("[Point]:[预取html请求]"),
    PRE_REQUEST_HTML_RET("[Point]:[预取html请求结果]"),
    GET_PRE_HTML("[Point]:[获取预取html]"),
    GET_PRE_HTML_HIT("[Point]:[获取预取html命中结果]"),
    POINT_OPEN_BROWSER("[Point]:[外跳浏览器]"),
    PRE_STRATEGY_FAIL("[Point]:[通用预取失败]"),
    POINT_LATER_OFFLINE_EX("[Point]:[稍后再用-offline浮条曝光]"),
    POINT_LATER_OFFLINE_APP_EX("[Point]:[稍后再用-offline 小程序曝光]"),
    POINT_LATER_OFFLINE_CLICK("[Point]:[稍后再用-offline浮条点击]"),
    POINT_GET_ADD_EX("[Point]:[MC-榜单get加桌成功弹窗曝光]"),
    POINT_GET_TOAST_ADD_EX("[Point]:[MC-榜单get-添加成功toast 提示曝光]"),
    POINT_GET_ADD_CLICK("[Point]:[get-add-click]"),
    POINT_GET_ADD_NOSHOW("[Point]:[用户在榜单get加桌成功弹窗点击立即使用或退出时有勾选不再提醒 选项时上报]"),
    ADD_MINI_APP_TO_DESKTOP("[Point]:[小程序添加到桌面的触发结果]");

    private HashMap<String, Object> data;
    private final String des;

    PointAnalyseType(String str) {
        this.des = str;
    }

    @Nullable
    public HashMap<String, Object> getData() {
        return this.data;
    }

    @NonNull
    public String getDes() {
        return this.des;
    }

    @NonNull
    public PointAnalyseType putData(@NonNull String str, @Nullable Object obj) {
        if (this.data == null) {
            this.data = new HashMap<>(8);
        }
        this.data.put(str, obj);
        return this;
    }
}

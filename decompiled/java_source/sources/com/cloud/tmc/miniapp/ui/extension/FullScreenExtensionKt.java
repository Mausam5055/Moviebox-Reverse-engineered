package com.cloud.tmc.miniapp.ui.extension;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.DisplayUtils;
import com.cloud.tmc.kernel.constants.MiniAppType;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.base.MiniAppBaseFragment;
import com.cloud.tmc.miniapp.ui.MiniFragment;
import com.cloud.tmc.miniutils.util.ScreenUtils;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class FullScreenExtensionKt {
    private static final String fullScreenJS = "\n        function getVideoRect() {\n              console.log('pom getVideoRect');\n              if (window.injectFullScreen != null) {\n                return;\n              }\n              window.injectFullScreen = true;\n              [\n                'fullscreenchange',\n                'webkitfullscreenchange',\n                'mozfullscreenchange',\n                'msfullscreenchange',\n              ].forEach((item) => {\n                document.addEventListener(item, function (res) {\n                  console.log('pom ' + item);\n                  var fullscreenElement = document.fullscreenElement;\n                  if (fullscreenElement) {\n                    if (fullscreenElement instanceof HTMLVideoElement) {\n                      // 全屏元素是 <video> 标签\n                      console.log('pom ' + item + ' video label enter fullScreen');\n                      window.dltFullScreen.enterFullScreen(\n                        res.target.videoWidth,\n                        res.target.videoHeight,\n                        true\n                      );\n                    } else {\n                      // 全屏元素不是 <video> 标签\n                      console.log('pom ' + item + ' other label enter fullScreen');\n                      window.dltFullScreen.enterFullScreen(\n                        res.target.videoWidth,\n                        res.target.videoHeight,\n                        false\n                      );\n                    }\n                  } else {\n                    // 页面退出全屏模式\n                    console.log('pom ' + item + ' exit fullScreen');\n                  }\n                });\n              });\n            }\n            getVideoRect();\n    ";

    public static final void addADJSIListener(MiniAppBaseFragment miniAppBaseFragment, Page page, final MiniFragment miniFragment) {
        IEventCenter eventCenterInstance;
        Intrinsics.h(miniAppBaseFragment, "<this>");
        Intrinsics.h(miniFragment, "miniFragment");
        if (page == null || (eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(page)) == null) {
            return;
        }
        eventCenterInstance.register("eventAD_" + page.getNodeId(), new IEventSubscriber() { // from class: com.cloud.tmc.miniapp.ui.extension.c
            @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
            public final boolean onEvent(IEvent iEvent) {
                return FullScreenExtensionKt.addADJSIListener$lambda$11$lambda$10(miniFragment, iEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean addADJSIListener$lambda$11$lambda$10(MiniFragment miniFragment, IEvent iEvent) {
        Intrinsics.h(miniFragment, "$miniFragment");
        if (iEvent == null) {
            return true;
        }
        try {
            Map<String, Object> data = iEvent.getData();
            if (data == null) {
                return true;
            }
            Object obj = data.get(TmcConstants.EVENT_AD_PARAM_KEY_AD_TAG);
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj;
            Object obj2 = data.get(TmcConstants.EVENT_AD_PARAM_KEY_ADM);
            Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Boolean");
            boolean zBooleanValue = ((Boolean) obj2).booleanValue();
            Object obj3 = data.get(TmcConstants.EVENT_AD_PARAM_KEY_CALLBACK_ID);
            Intrinsics.f(obj3, "null cannot be cast to non-null type kotlin.String");
            String str2 = (String) obj3;
            TmcLogger.d("pom", "adTag:" + str + ", adm:" + zBooleanValue + ", callbackId:" + str2);
            miniFragment.setAdTag(str);
            miniFragment.setAdm(zBooleanValue);
            miniFragment.setCallbackId(str2);
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }

    public static final void addFullScreenJSIListener(MiniAppBaseFragment miniAppBaseFragment, Page page, final ViewGroup viewGroup, final FragmentActivity activity, final App app, final MiniAppBaseFragment miniAppBaseFragment2) {
        IEventCenter eventCenterInstance;
        Intrinsics.h(miniAppBaseFragment, "<this>");
        Intrinsics.h(activity, "activity");
        Intrinsics.h(miniAppBaseFragment2, "miniAppBaseFragment");
        if (page == null || (eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(page)) == null) {
            return;
        }
        eventCenterInstance.register("eventFullScreen_" + page.getNodeId(), new IEventSubscriber() { // from class: com.cloud.tmc.miniapp.ui.extension.f
            @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
            public final boolean onEvent(IEvent iEvent) {
                return FullScreenExtensionKt.addFullScreenJSIListener$lambda$3$lambda$2(viewGroup, activity, app, miniAppBaseFragment2, iEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean addFullScreenJSIListener$lambda$3$lambda$2(ViewGroup viewGroup, FragmentActivity activity, App app, MiniAppBaseFragment miniAppBaseFragment, IEvent iEvent) {
        Intrinsics.h(activity, "$activity");
        Intrinsics.h(miniAppBaseFragment, "$miniAppBaseFragment");
        if (iEvent == null) {
            return true;
        }
        try {
            Map<String, Object> data = iEvent.getData();
            if (data == null) {
                return true;
            }
            Object obj = data.get(TmcConstants.EVENT_FULLSCREEN_PARAM_KEY_WIDTH);
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue = ((Integer) obj).intValue();
            Object obj2 = data.get(TmcConstants.EVENT_FULLSCREEN_PARAM_KEY_HEIGHT);
            Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue2 = ((Integer) obj2).intValue();
            Object obj3 = data.get(TmcConstants.EVENT_FULLSCREEN_PARAM_KEY_IS_VIDEO);
            Intrinsics.f(obj3, "null cannot be cast to non-null type kotlin.Boolean");
            enterFullScreen(iIntValue, iIntValue2, ((Boolean) obj3).booleanValue(), viewGroup, activity, app, miniAppBaseFragment);
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enterFullScreen(final int i11, final int i12, final boolean z10, final ViewGroup viewGroup, final FragmentActivity fragmentActivity, final App app, final MiniAppBaseFragment miniAppBaseFragment) {
        AppModel appModel;
        TmcLogger.d("pom", "getRect->width:" + i11 + ", height:" + i12 + ", isVideo:" + z10 + ", appType:" + ((app == null || (appModel = app.getAppModel()) == null) ? null : Integer.valueOf(appModel.getAppinfoCategoryType())));
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.extension.d
            @Override // java.lang.Runnable
            public final void run() {
                FullScreenExtensionKt.enterFullScreen$lambda$8(viewGroup, fragmentActivity, app, z10, i11, i12, miniAppBaseFragment);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enterFullScreen$lambda$8(ViewGroup viewGroup, FragmentActivity activity, App app, boolean z10, int i11, int i12, MiniAppBaseFragment miniAppBaseFragment) {
        AppModel appModel;
        Intrinsics.h(activity, "$activity");
        Intrinsics.h(miniAppBaseFragment, "$miniAppBaseFragment");
        if (viewGroup != null) {
            ConstraintLayout.b bVar = new ConstraintLayout.b(-2, -2);
            int screenHeight = ScreenUtils.getScreenHeight();
            if (DisplayUtils.isExistStatusBar(activity)) {
                screenHeight -= DisplayUtils.getStatusBarHeight(activity);
                Window window = activity.getWindow();
                WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
                if (Build.VERSION.SDK_INT >= 28 && attributes != null && attributes.layoutInDisplayCutoutMode == 3) {
                    screenHeight += DisplayUtils.getStatusBarHeight(activity);
                }
            }
            if (app != null && (appModel = app.getAppModel()) != null && appModel.getAppinfoCategoryType() == MiniAppType.SHELL_GAME.getType()) {
                if (miniAppBaseFragment.getHasVirtualNavBar()) {
                    screenHeight -= DisplayUtils.getNavigationBarHeight(activity);
                }
                ((ViewGroup.MarginLayoutParams) bVar).width = ScreenUtils.getScreenWidth();
                ((ViewGroup.MarginLayoutParams) bVar).height = screenHeight;
                if (!miniAppBaseFragment.isFullScreen().get()) {
                    return;
                }
                if (activity.getRequestedOrientation() == 0) {
                    activity.setRequestedOrientation(1);
                }
            } else if (!z10 || (z10 && i11 > i12)) {
                if (miniAppBaseFragment.getHasVirtualNavBar()) {
                    miniAppBaseFragment.hideVirtualNavBar();
                }
                int screenWidth = ScreenUtils.getScreenWidth();
                if (screenWidth >= screenHeight) {
                    ((ViewGroup.MarginLayoutParams) bVar).height = screenHeight;
                    ((ViewGroup.MarginLayoutParams) bVar).width = screenWidth;
                } else {
                    ((ViewGroup.MarginLayoutParams) bVar).height = screenWidth;
                    ((ViewGroup.MarginLayoutParams) bVar).width = screenHeight;
                }
                if (!miniAppBaseFragment.isFullScreen().get()) {
                    return;
                }
                if (activity.getRequestedOrientation() == 1) {
                    activity.setRequestedOrientation(0);
                }
            } else {
                if (miniAppBaseFragment.getHasVirtualNavBar()) {
                    screenHeight -= DisplayUtils.getNavigationBarHeight(activity);
                }
                ((ViewGroup.MarginLayoutParams) bVar).width = ScreenUtils.getScreenWidth();
                ((ViewGroup.MarginLayoutParams) bVar).height = screenHeight;
                if (!miniAppBaseFragment.isFullScreen().get()) {
                    return;
                }
                if (activity.getRequestedOrientation() == 0) {
                    activity.setRequestedOrientation(1);
                }
            }
            viewGroup.setLayoutParams(bVar);
            viewGroup.requestLayout();
        }
    }

    private static final int getFixScreenHeight(ViewGroup viewGroup, int i11) {
        try {
            ViewParent parent = viewGroup.getParent();
            if (parent == null || !(parent instanceof ViewGroup)) {
                return i11;
            }
            int height = ((ViewGroup) parent).getHeight();
            int i12 = height < i11 ? height : i11;
            try {
                TmcLogger.d("pom", "parent.height:" + height + ", targetHeight:" + i11);
            } catch (Throwable unused) {
            }
            return i12;
        } catch (Throwable unused2) {
            return i11;
        }
    }

    public static final void injectScreenFullJS(MiniAppBaseFragment miniAppBaseFragment) {
        IRender render;
        Intrinsics.h(miniAppBaseFragment, "<this>");
        Page page = miniAppBaseFragment.getPage();
        View view = (page == null || (render = page.getRender()) == null) ? null : render.getView();
        WebView webView = view instanceof WebView ? (WebView) view : null;
        if (webView != null) {
            webView.evaluateJavascript(fullScreenJS, new ValueCallback() { // from class: com.cloud.tmc.miniapp.ui.extension.b
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(Object obj) {
                    FullScreenExtensionKt.injectScreenFullJS$lambda$0((String) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void injectScreenFullJS$lambda$0(String str) {
    }

    public static final void landScapeToProtrait(MiniAppBaseFragment miniAppBaseFragment) {
        FragmentActivity activity;
        Intrinsics.h(miniAppBaseFragment, "<this>");
        FragmentActivity activity2 = miniAppBaseFragment.getActivity();
        if (activity2 == null || activity2.getRequestedOrientation() != 0 || (activity = miniAppBaseFragment.getActivity()) == null) {
            return;
        }
        activity.setRequestedOrientation(1);
    }

    public static final void removeADJSIListener(MiniAppBaseFragment miniAppBaseFragment, Page page) {
        IEventCenter eventCenterInstance;
        Intrinsics.h(miniAppBaseFragment, "<this>");
        if (page == null || (eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(page)) == null) {
            return;
        }
        eventCenterInstance.unregister("eventAD_" + page.getNodeId());
    }

    public static final void removeFullScreenJSIListener(MiniAppBaseFragment miniAppBaseFragment, Page page) {
        IEventCenter eventCenterInstance;
        Intrinsics.h(miniAppBaseFragment, "<this>");
        if (page == null || (eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(page)) == null) {
            return;
        }
        eventCenterInstance.unregister("eventFullScreen_" + page.getNodeId());
    }

    public static final void tryToProtrait(final MiniAppBaseFragment miniAppBaseFragment, final ViewGroup viewGroup, final FragmentActivity activity, App app) {
        Intrinsics.h(miniAppBaseFragment, "<this>");
        Intrinsics.h(activity, "activity");
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.extension.e
            @Override // java.lang.Runnable
            public final void run() {
                FullScreenExtensionKt.tryToProtrait$lambda$6(viewGroup, activity, miniAppBaseFragment);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void tryToProtrait$lambda$6(ViewGroup viewGroup, FragmentActivity activity, MiniAppBaseFragment this_tryToProtrait) {
        Intrinsics.h(activity, "$activity");
        Intrinsics.h(this_tryToProtrait, "$this_tryToProtrait");
        if (viewGroup != null) {
            ConstraintLayout.b bVar = new ConstraintLayout.b(-2, -2);
            int screenHeight = ScreenUtils.getScreenHeight();
            if (DisplayUtils.isExistStatusBar(activity)) {
                screenHeight -= DisplayUtils.getStatusBarHeight(activity);
                Window window = activity.getWindow();
                WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
                if (Build.VERSION.SDK_INT >= 28 && attributes != null && attributes.layoutInDisplayCutoutMode == 3) {
                    screenHeight += DisplayUtils.getStatusBarHeight(activity);
                }
            }
            if (this_tryToProtrait.getHasVirtualNavBar()) {
                screenHeight -= DisplayUtils.getNavigationBarHeight(activity);
            }
            ((ViewGroup.MarginLayoutParams) bVar).width = ScreenUtils.getScreenWidth();
            ((ViewGroup.MarginLayoutParams) bVar).height = screenHeight;
            if (activity.getRequestedOrientation() == 0) {
                activity.setRequestedOrientation(1);
            }
            viewGroup.setLayoutParams(bVar);
            viewGroup.requestLayout();
        }
    }
}

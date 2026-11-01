package com.cloud.tmc.miniapp.widget.popupview;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.utils.MiniBarUtils;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniutils.util.StringUtils;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class MsgBubblePopUpWindowView extends LinearLayout {
    public final Lazy OooO00o;
    public final Lazy OooO0O0;
    public boolean OooO0OO;

    public static final class OooO00o extends Lambda implements Function0<AppCompatImageView> {
        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) MsgBubblePopUpWindowView.this.findViewById(R.id.iv_msg_jump);
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<TextView> {
        public OooO0O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) MsgBubblePopUpWindowView.this.findViewById(R.id.tv_msg_toast);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MsgBubblePopUpWindowView(Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MsgBubblePopUpWindowView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MsgBubblePopUpWindowView(Context context, AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, 0, 8, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MsgBubblePopUpWindowView(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        Intrinsics.h(context, "context");
        this.OooO00o = LazyKt.b(new OooO0O0());
        this.OooO0O0 = LazyKt.b(new OooO00o());
        this.OooO0OO = true;
        LayoutInflater.from(context).inflate(R.layout.mini_msg_notice_popwindow_layout, this);
        setTranslationY(getTranslationY() + MiniBarUtils.getStatusHeight());
        boolean configTargetBool = MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_MINI_MSG_ENABLE_JUMP, true);
        this.OooO0OO = configTargetBool;
        if (configTargetBool) {
            AppCompatImageView mIvMsgJump = getMIvMsgJump();
            if (mIvMsgJump != null) {
                ViewExtKt.toVisible(mIvMsgJump);
            }
        } else {
            AppCompatImageView mIvMsgJump2 = getMIvMsgJump();
            if (mIvMsgJump2 != null) {
                ViewExtKt.toInvisible(mIvMsgJump2);
            }
        }
        setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.popupview.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MsgBubblePopUpWindowView.OooO00o(this.f23911a, view);
            }
        });
    }

    public /* synthetic */ MsgBubblePopUpWindowView(Context context, AttributeSet attributeSet, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i13 & 2) != 0 ? null : attributeSet, (i13 & 4) != 0 ? 0 : i11, (i13 & 8) != 0 ? 0 : i12);
    }

    public static final void OooO00o(MsgBubblePopUpWindowView this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        if (this$0.OooO0OO) {
            Context context = this$0.getContext();
            Bundle bundle = new Bundle();
            bundle.putString("page", "pages/notification/notification");
            bundle.putString("query", "entrance%3DBubble");
            Unit unit = Unit.f67061a;
            ByteAppManager.launchMiniAppForId(context, "1000886706715795456", "", bundle);
        }
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        Bundle bundle2 = new Bundle();
        bundle2.putString("jump_confi", this$0.OooO0OO ? "0" : "1");
        Unit unit2 = Unit.f67061a;
        performanceAnalyseProxy.recordForCommon(null, TmcConstants.REPORTER_MSG_BUBBLE_CLICK, bundle2);
    }

    private final AppCompatImageView getMIvMsgJump() {
        return (AppCompatImageView) this.OooO0O0.getValue();
    }

    private final TextView getMTvMsgToast() {
        return (TextView) this.OooO00o.getValue();
    }

    public final void OooO00o(String str) {
        if (str != null) {
            try {
                TextView mTvMsgToast = getMTvMsgToast();
                if (mTvMsgToast == null) {
                    return;
                }
                mTvMsgToast.setText(StringUtils.format(StringUtils.getString(R.string.mini_toast_msg_bubble_tips), str));
            } catch (Throwable th2) {
                TmcLogger.e("MsgBubblePopUpWindowView", th2);
            }
        }
    }
}

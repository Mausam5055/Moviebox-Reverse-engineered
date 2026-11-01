package com.cloud.tmc.miniapp.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cloud.tmc.integration.model.CSMKBean;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniutils.util.GsonUtils;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class o0Oo0oo extends com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o<o0Oo0oo> {
    public final Context OooO00o;
    public final String OooO0O0;
    public final Lazy OooO0OO;
    public final Lazy OooO0Oo;
    public final Lazy OooO0o;
    public final Lazy OooO0o0;
    public boolean OooO0oO;

    public static final class OooO00o extends Lambda implements Function0<ImageView> {
        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (ImageView) o0Oo0oo.this.findViewById(R.id.iv_close);
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<ImageView> {
        public OooO0O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (ImageView) o0Oo0oo.this.findViewById(R.id.iv_confrim);
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<ImageView> {
        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (ImageView) o0Oo0oo.this.findViewById(R.id.iv_logo);
        }
    }

    public static final class OooO0o extends Lambda implements Function0<TextView> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o0Oo0oo.this.findViewById(R.id.tv_open);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0Oo0oo(Context mContext, String appId) {
        super(mContext);
        Intrinsics.h(mContext, "mContext");
        Intrinsics.h(appId, "appId");
        this.OooO00o = mContext;
        this.OooO0O0 = appId;
        this.OooO0OO = LazyKt.b(new OooO0OO());
        this.OooO0Oo = LazyKt.b(new OooO0O0());
        this.OooO0o0 = LazyKt.b(new OooO00o());
        this.OooO0o = LazyKt.b(new OooO0o());
        setContentView(R.layout.dialog_mini_open_app);
        setBackgroundDimEnabled(true);
        setCancelable(true);
        setGravity(80);
        setAnimStyle(-1);
        ImageView imageViewOooO0O0 = OooO0O0();
        if (imageViewOooO0O0 != null) {
            imageViewOooO0O0.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    o0Oo0oo.OooO00o(this.f23560a, view);
                }
            });
        }
        TextView textViewOooO0OO = OooO0OO();
        if (textViewOooO0OO != null) {
            textViewOooO0OO.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    o0Oo0oo.OooO0O0(this.f23561a, view);
                }
            });
        }
        ImageView imageViewOooO00o = OooO00o();
        if (imageViewOooO00o != null) {
            imageViewOooO00o.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.dialog.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    o0Oo0oo.OooO0OO(this.f23562a, view);
                }
            });
        }
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_GET_ADD_EX;
        Bundle bundle = new Bundle();
        bundle.putString("miniappid", appId);
        Unit unit = Unit.f67061a;
        performanceAnalyseProxy.record("", pointAnalyseType, "", bundle);
    }

    public static final void OooO00o(o0Oo0oo this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        view.setSelected(!this$0.OooO0oO);
        this$0.OooO0oO = !this$0.OooO0oO;
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(this$0.OooO00o, "1000886706715795456_web", "csmk", GsonUtils.toJson(new CSMKBean(!this$0.OooO0oO)));
    }

    public static final void OooO0O0(o0Oo0oo this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        ByteAppManager.launchMiniAppForId$default(this$0.OooO00o, this$0.OooO0O0, "120011", null, 8, null);
        this$0.dismiss();
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_GET_ADD_CLICK;
        Bundle bundle = new Bundle();
        bundle.putString("miniappid", this$0.OooO0O0);
        bundle.putString(NativeComponentConstants.KEY_COMPONENT_TYPE, "1");
        Unit unit = Unit.f67061a;
        performanceAnalyseProxy.record("", pointAnalyseType, "", bundle);
        if (this$0.OooO0oO) {
            PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            PointAnalyseType pointAnalyseType2 = PointAnalyseType.POINT_GET_ADD_NOSHOW;
            Bundle bundle2 = new Bundle();
            bundle2.putString("miniappid", this$0.OooO0O0);
            performanceAnalyseProxy2.record("", pointAnalyseType2, "", bundle2);
        }
    }

    public static final void OooO0OO(o0Oo0oo this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.dismiss();
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_GET_ADD_CLICK;
        Bundle bundle = new Bundle();
        bundle.putString("miniappid", this$0.OooO0O0);
        bundle.putString(NativeComponentConstants.KEY_COMPONENT_TYPE, "2");
        Unit unit = Unit.f67061a;
        performanceAnalyseProxy.record("", pointAnalyseType, "", bundle);
        if (this$0.OooO0oO) {
            PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            PointAnalyseType pointAnalyseType2 = PointAnalyseType.POINT_GET_ADD_NOSHOW;
            Bundle bundle2 = new Bundle();
            bundle2.putString("miniappid", this$0.OooO0O0);
            performanceAnalyseProxy2.record("", pointAnalyseType2, "", bundle2);
        }
    }

    public final ImageView OooO00o() {
        return (ImageView) this.OooO0o0.getValue();
    }

    public final ImageView OooO0O0() {
        return (ImageView) this.OooO0Oo.getValue();
    }

    public final TextView OooO0OO() {
        return (TextView) this.OooO0o.getValue();
    }
}

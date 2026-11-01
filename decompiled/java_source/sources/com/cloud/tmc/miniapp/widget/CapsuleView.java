package com.cloud.tmc.miniapp.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.cloud.tmc.integration.utils.FastClickUtil;
import com.cloud.tmc.integration.utils.MiniAppConfigUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoadCallback;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniutils.util.SystemUtils;
import com.cloud.tmc.miniutils.util.ViewUtils;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class CapsuleView extends LinearLayoutCompat {
    public final Lazy OooO;
    public final HashMap<Integer, HashMap<Integer, Integer>> OooO00o;
    public final HashMap<Integer, HashMap<Integer, Integer>> OooO0O0;
    public final HashMap<Integer, Integer> OooO0OO;
    public final HashMap<Integer, Integer> OooO0Oo;
    public Function0<Unit> OooO0o;
    public Function0<Unit> OooO0o0;
    public final Lazy OooO0oO;
    public final Lazy OooO0oo;
    public final Lazy OooOO0;
    public HashMap<Integer, HashMap<Integer, Integer>> OooOO0O;

    public static final class OooO extends Lambda implements Function0<AppCompatImageView> {
        public OooO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) CapsuleView.this.findViewById(R.id.iv_left);
        }
    }

    public static final class OooO00o implements ImageLoadCallback<Drawable> {
        public OooO00o() {
        }

        @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoadCallback
        public void onLoadFailed(String str) {
        }

        @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoadCallback
        public void onLoadSuccess(Drawable drawable) {
            Drawable drawable2 = drawable;
            if (drawable2 != null) {
                CapsuleView.this.getIvLeft().setForeground(drawable2);
            }
        }
    }

    public static final class OooO0O0 implements ImageLoadCallback<Drawable> {
        public OooO0O0() {
        }

        @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoadCallback
        public void onLoadFailed(String str) {
        }

        @Override // com.cloud.tmc.kernel.proxy.imageloader.ImageLoadCallback
        public void onLoadSuccess(Drawable drawable) {
            Drawable drawable2 = drawable;
            if (drawable2 != null) {
                CapsuleView.this.getIvRight().setForeground(drawable2);
            }
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<LinearLayoutCompat> {
        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (LinearLayoutCompat) CapsuleView.this.findViewById(R.id.capsule_layout);
        }
    }

    public static final class OooO0o extends Lambda implements Function0<View> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return CapsuleView.this.findViewById(R.id.view_center_line);
        }
    }

    public static final class OooOO0 extends Lambda implements Function0<AppCompatImageView> {
        public OooOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) CapsuleView.this.findViewById(R.id.iv_right);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CapsuleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        HashMap<Integer, HashMap<Integer, Integer>> mapJ = MapsKt.j(TuplesKt.a(0, MapsKt.j(TuplesKt.a(Integer.valueOf(R.id.iv_left), Integer.valueOf(R.drawable.mini_ic_title_more_white_mode)), TuplesKt.a(Integer.valueOf(R.id.iv_right), Integer.valueOf(R.drawable.mini_ic_title_close_white_mode)))), TuplesKt.a(1, MapsKt.j(TuplesKt.a(Integer.valueOf(R.id.iv_left), Integer.valueOf(R.drawable.mini_ic_title_more_black_mode)), TuplesKt.a(Integer.valueOf(R.id.iv_right), Integer.valueOf(R.drawable.mini_ic_title_close_black_mode)))));
        this.OooO00o = mapJ;
        HashMap<Integer, HashMap<Integer, Integer>> mapJ2 = MapsKt.j(TuplesKt.a(0, MapsKt.j(TuplesKt.a(Integer.valueOf(R.id.iv_left), Integer.valueOf(R.drawable.mini_ic_title_back_white_mode)), TuplesKt.a(Integer.valueOf(R.id.iv_right), Integer.valueOf(R.drawable.mini_ic_title_home_white_mode)))), TuplesKt.a(1, MapsKt.j(TuplesKt.a(Integer.valueOf(R.id.iv_left), Integer.valueOf(R.drawable.mini_ic_immersive_title_bar_back_black_mode)), TuplesKt.a(Integer.valueOf(R.id.iv_right), Integer.valueOf(R.drawable.mini_ic_immersive_title_bar_home_black_mode)))));
        this.OooO0O0 = mapJ2;
        this.OooO0OO = MapsKt.j(TuplesKt.a(0, Integer.valueOf(R.color.mini_color_capsule_line_white_mode_bg)), TuplesKt.a(1, Integer.valueOf(R.color.mini_color_border_capsule)));
        this.OooO0Oo = MapsKt.j(TuplesKt.a(0, Integer.valueOf(R.drawable.shape_bg_capsule_white_mode)), TuplesKt.a(1, Integer.valueOf(R.drawable.shape_bg_capsule_black_mode)));
        this.OooO0oO = LazyKt.b(new OooO0OO());
        this.OooO0oo = LazyKt.b(new OooO());
        this.OooO = LazyKt.b(new OooO0o());
        this.OooOO0 = LazyKt.b(new OooOO0());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Mini_CapsuleView);
        Intrinsics.g(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…yleable.Mini_CapsuleView)");
        int i11 = typedArrayObtainStyledAttributes.getInt(R.styleable.Mini_CapsuleView_capsule_style, 0);
        if (i11 != 1 && i11 == 2) {
            mapJ = mapJ2;
        }
        this.OooOO0O = mapJ;
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater.from(context).inflate(R.layout.layout_mini_capsule, this);
        if (!isInEditMode()) {
            getIvLeft().setRotationY(ViewUtils.isLayoutRtl() ? 180.0f : 0.0f);
            getIvRight().setRotationY(ViewUtils.isLayoutRtl() ? 180.0f : 0.0f);
        }
        getIvLeft().setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CapsuleView.OooO00o(this.f23867a, view);
            }
        });
        getIvRight().setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CapsuleView.OooO0O0(this.f23868a, view);
            }
        });
        int i12 = !SystemUtils.darkThemeIsEnabled(context) ? 1 : 0;
        try {
            ImageLoaderProxy imageLoaderProxy = (ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class);
            imageLoaderProxy.loadImg(context, R.drawable.shape_fg_capsule_left_click, 0, getIvLeft(), new OooO00o());
            imageLoaderProxy.loadImg(context, R.drawable.shape_fg_capsule_right_click, 0, getIvRight(), new OooO0O0());
        } catch (Throwable th2) {
            TmcLogger.e("", th2);
        }
        OooO00o(this, i12, null, 2);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0064 A[Catch: all -> 0x0058, TryCatch #1 {all -> 0x0058, blocks: (B:17:0x0049, B:23:0x005e, B:25:0x0064, B:26:0x0070, B:22:0x005a), top: B:56:0x0049, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0070 A[Catch: all -> 0x0058, TRY_LEAVE, TryCatch #1 {all -> 0x0058, blocks: (B:17:0x0049, B:23:0x005e, B:25:0x0064, B:26:0x0070, B:22:0x005a), top: B:56:0x0049, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x008b  */
    /* JADX WARN: Code duplicated, block: B:35:0x008e A[Catch: all -> 0x008c, TryCatch #3 {all -> 0x008c, blocks: (B:30:0x007d, B:36:0x0092, B:38:0x0098, B:39:0x00a4, B:35:0x008e), top: B:59:0x007d, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0092 A[Catch: all -> 0x008c, PHI: r8
  0x0092: PHI (r8v11 java.lang.Integer) = (r8v10 java.lang.Integer), (r8v13 java.lang.Integer) binds: [B:31:0x0089, B:35:0x008e] A[DONT_GENERATE, DONT_INLINE], TryCatch #3 {all -> 0x008c, blocks: (B:30:0x007d, B:36:0x0092, B:38:0x0098, B:39:0x00a4, B:35:0x008e), top: B:59:0x007d, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x0098 A[Catch: all -> 0x008c, TryCatch #3 {all -> 0x008c, blocks: (B:30:0x007d, B:36:0x0092, B:38:0x0098, B:39:0x00a4, B:35:0x008e), top: B:59:0x007d, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a4 A[Catch: all -> 0x008c, TRY_LEAVE, TryCatch #3 {all -> 0x008c, blocks: (B:30:0x007d, B:36:0x0092, B:38:0x0098, B:39:0x00a4, B:35:0x008e), top: B:59:0x007d, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x007d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void OooO00o(CapsuleView capsuleView, int i11, HashMap map, int i12) {
        Integer num;
        Integer num2;
        int iIntValue;
        int iIntValue2;
        HashMap<Integer, HashMap<Integer, Integer>> style = (i12 & 2) != 0 ? capsuleView.OooOO0O : null;
        capsuleView.getClass();
        Intrinsics.h(style, "style");
        Integer numValueOf = MiniAppConfigUtils.getTitleBarNodeMode() == null ? Integer.valueOf(i11) : MiniAppConfigUtils.getTitleBarNodeMode();
        LinearLayoutCompat capsuleLayout = capsuleView.getCapsuleLayout();
        Integer num3 = capsuleView.OooO0Oo.get(numValueOf);
        capsuleLayout.setBackgroundResource(num3 != null ? num3.intValue() : 0);
        HashMap<Integer, Integer> map2 = style.get(numValueOf);
        try {
            ImageLoaderProxy imageLoaderProxy = (ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class);
            if (map2 != null) {
                try {
                    num = map2.get(Integer.valueOf(R.id.iv_left));
                    if (num == null) {
                        num = 0;
                        iIntValue2 = num.intValue();
                        if (iIntValue2 != 0) {
                            imageLoaderProxy.loadImg(capsuleView.getContext(), iIntValue2, iIntValue2, capsuleView.getIvLeft());
                        } else {
                            capsuleView.getIvLeft().setImageResource(iIntValue2);
                        }
                    } else {
                        iIntValue2 = num.intValue();
                        if (iIntValue2 != 0) {
                            imageLoaderProxy.loadImg(capsuleView.getContext(), iIntValue2, iIntValue2, capsuleView.getIvLeft());
                        } else {
                            capsuleView.getIvLeft().setImageResource(iIntValue2);
                        }
                    }
                } catch (Throwable th2) {
                    TmcLogger.e("", th2);
                }
                if (map2 != null) {
                    try {
                        num2 = map2.get(Integer.valueOf(R.id.iv_right));
                        if (num2 == null) {
                            num2 = 0;
                            iIntValue = num2.intValue();
                            if (iIntValue != 0) {
                                imageLoaderProxy.loadImg(capsuleView.getContext(), iIntValue, iIntValue, capsuleView.getIvRight());
                            } else {
                                capsuleView.getIvRight().setImageResource(iIntValue);
                            }
                        } else {
                            iIntValue = num2.intValue();
                            if (iIntValue != 0) {
                                imageLoaderProxy.loadImg(capsuleView.getContext(), iIntValue, iIntValue, capsuleView.getIvRight());
                            } else {
                                capsuleView.getIvRight().setImageResource(iIntValue);
                            }
                        }
                    } catch (Throwable th3) {
                        TmcLogger.e("", th3);
                    }
                } else {
                    num2 = 0;
                    iIntValue = num2.intValue();
                    if (iIntValue != 0) {
                        imageLoaderProxy.loadImg(capsuleView.getContext(), iIntValue, iIntValue, capsuleView.getIvRight());
                    } else {
                        capsuleView.getIvRight().setImageResource(iIntValue);
                    }
                }
            } else {
                num = 0;
                iIntValue2 = num.intValue();
                if (iIntValue2 != 0) {
                    imageLoaderProxy.loadImg(capsuleView.getContext(), iIntValue2, iIntValue2, capsuleView.getIvLeft());
                } else {
                    capsuleView.getIvLeft().setImageResource(iIntValue2);
                }
                if (map2 != null) {
                    num2 = map2.get(Integer.valueOf(R.id.iv_right));
                    if (num2 == null) {
                        num2 = 0;
                        iIntValue = num2.intValue();
                        if (iIntValue != 0) {
                            imageLoaderProxy.loadImg(capsuleView.getContext(), iIntValue, iIntValue, capsuleView.getIvRight());
                        } else {
                            capsuleView.getIvRight().setImageResource(iIntValue);
                        }
                    } else {
                        iIntValue = num2.intValue();
                        if (iIntValue != 0) {
                            imageLoaderProxy.loadImg(capsuleView.getContext(), iIntValue, iIntValue, capsuleView.getIvRight());
                        } else {
                            capsuleView.getIvRight().setImageResource(iIntValue);
                        }
                    }
                } else {
                    num2 = 0;
                    iIntValue = num2.intValue();
                    if (iIntValue != 0) {
                        imageLoaderProxy.loadImg(capsuleView.getContext(), iIntValue, iIntValue, capsuleView.getIvRight());
                    } else {
                        capsuleView.getIvRight().setImageResource(iIntValue);
                    }
                }
            }
        } catch (Throwable th4) {
            TmcLogger.e("", th4);
        }
        try {
            View centerLineView = capsuleView.getCenterLineView();
            Context context = capsuleView.getContext();
            Integer num4 = capsuleView.OooO0OO.get(numValueOf);
            centerLineView.setBackgroundColor(androidx.core.content.b.getColor(context, num4 != null ? num4.intValue() : R.color.mini_color_border_capsule));
        } catch (Throwable th5) {
            TmcLogger.e("", th5);
        }
    }

    public static final void OooO00o(CapsuleView this$0, View view) {
        Function0<Unit> function0;
        Intrinsics.h(this$0, "this$0");
        if (FastClickUtil.isFastDoubleClick() || (function0 = this$0.OooO0o0) == null) {
            return;
        }
        function0.invoke();
    }

    public static final void OooO0O0(CapsuleView this$0, View view) {
        Function0<Unit> function0;
        Intrinsics.h(this$0, "this$0");
        if (FastClickUtil.isFastDoubleClick() || (function0 = this$0.OooO0o) == null) {
            return;
        }
        function0.invoke();
    }

    private final LinearLayoutCompat getCapsuleLayout() {
        Object value = this.OooO0oO.getValue();
        Intrinsics.g(value, "<get-capsuleLayout>(...)");
        return (LinearLayoutCompat) value;
    }

    private final View getCenterLineView() {
        Object value = this.OooO.getValue();
        Intrinsics.g(value, "<get-centerLineView>(...)");
        return (View) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppCompatImageView getIvLeft() {
        Object value = this.OooO0oo.getValue();
        Intrinsics.g(value, "<get-ivLeft>(...)");
        return (AppCompatImageView) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppCompatImageView getIvRight() {
        Object value = this.OooOO0.getValue();
        Intrinsics.g(value, "<get-ivRight>(...)");
        return (AppCompatImageView) value;
    }

    public final HashMap<Integer, HashMap<Integer, Integer>> getBackAndHome() {
        return this.OooO0O0;
    }

    public final HashMap<Integer, HashMap<Integer, Integer>> getCapsuleStyle() {
        return this.OooOO0O;
    }

    public final HashMap<Integer, HashMap<Integer, Integer>> getMoreAndClose() {
        return this.OooO00o;
    }

    public final void setCapsuleStyle(HashMap<Integer, HashMap<Integer, Integer>> map) {
        Intrinsics.h(map, "<set-?>");
        this.OooOO0O = map;
    }

    public final void setOnLeftClickListener(Function0<Unit> cb2) {
        Intrinsics.h(cb2, "cb");
        this.OooO0o0 = cb2;
    }

    public final void setOnRightClickListener(Function0<Unit> cb2) {
        Intrinsics.h(cb2, "cb");
        this.OooO0o = cb2;
    }
}

package com.cloud.tmc.miniapp.widget.popupview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cloud.tmc.integration.utils.MiniBarUtils;
import com.cloud.tmc.integration.utils.RegexUtils;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.R;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class AddHomeCustom2PopUpWindowView extends LinearLayout {
    public final Lazy OooO00o;
    public final Lazy OooO0O0;

    public static final class OooO00o extends Lambda implements Function0<TextView> {
        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) AddHomeCustom2PopUpWindowView.this.findViewById(R.id.add_home_toast);
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<ImageView> {
        public OooO0O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (ImageView) AddHomeCustom2PopUpWindowView.this.findViewById(R.id.iv_images);
        }
    }

    public static final class OooO0OO extends Lambda implements Function1<Drawable, Unit> {
        public OooO0OO() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            Drawable drawable = (Drawable) obj;
            ImageView ivImages = AddHomeCustom2PopUpWindowView.this.getIvImages();
            if (ivImages != null) {
                ViewExtKt.toVisibleOrInvisible(ivImages, drawable != null);
            }
            ImageView ivImages2 = AddHomeCustom2PopUpWindowView.this.getIvImages();
            if (ivImages2 != null) {
                ivImages2.setImageDrawable(drawable);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public AddHomeCustom2PopUpWindowView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AddHomeCustom2PopUpWindowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.OooO00o = LazyKt.b(new OooO00o());
        this.OooO0O0 = LazyKt.b(new OooO0O0());
        LayoutInflater.from(context).inflate(R.layout.mini_layout_custom_addhomepopwindow_view_2, this);
        if (!isInEditMode()) {
            setTranslationY(getTranslationY() + MiniBarUtils.getStatusHeight());
        }
        setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.popupview.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddHomeCustom2PopUpWindowView.OooO00o(this.f23894a, view);
            }
        });
    }

    public /* synthetic */ AddHomeCustom2PopUpWindowView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    public static final void OooO00o(IResourceProcessor iResourceProcessor, String str, String str2, AddHomeCustom2PopUpWindowView this$0, final Function1 function1) {
        Intrinsics.h(this$0, "this$0");
        final File file = iResourceProcessor != null ? iResourceProcessor.get(str, str2) : null;
        ImageView ivImages = this$0.getIvImages();
        if (ivImages != null) {
            ivImages.post(new Runnable() { // from class: com.cloud.tmc.miniapp.widget.popupview.f
                @Override // java.lang.Runnable
                public final void run() {
                    AddHomeCustom2PopUpWindowView.OooO00o(function1, file);
                }
            });
        }
    }

    public static final void OooO00o(AddHomeCustom2PopUpWindowView this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.getClass();
        ViewExtKt.toGone(this$0);
    }

    public static final void OooO00o(Function1 function1, File file) {
        if (function1 != null) {
            function1.invoke(Drawable.createFromPath(file != null ? file.getAbsolutePath() : null));
        }
    }

    private final TextView getAddHomeToast() {
        return (TextView) this.OooO00o.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView getIvImages() {
        return (ImageView) this.OooO0O0.getValue();
    }

    public final AddHomeCustom2PopUpWindowView OooO00o(String str) {
        TextView addHomeToast = getAddHomeToast();
        if (addHomeToast != null) {
            if (str == null || str.length() == 0) {
                str = getContext().getString(R.string.mini_toast_add_home_tips);
            }
            addHomeToast.setText(str);
        }
        return this;
    }

    public final AddHomeCustom2PopUpWindowView OooO00o(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            ImageView ivImages = getIvImages();
            if (ivImages != null) {
                ViewExtKt.toInvisible(ivImages);
            }
        } else {
            OooO00o(str2, str, new OooO0OO());
        }
        return this;
    }

    public final void OooO00o(final String str, final String str2, final Function1<? super Drawable, Unit> function1) {
        if (str != null) {
            try {
                if (str.length() != 0) {
                    final IResourceProcessor iResourceProcessor = (IResourceProcessor) TmcProxy.get(IResourceProcessor.class);
                    if (RegexUtils.isURL(str) && !StringsKt.c0(str, ".miniapp.transsion.com", false, 2, null)) {
                        ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.widget.popupview.e
                            @Override // java.lang.Runnable
                            public final void run() {
                                AddHomeCustom2PopUpWindowView.OooO00o(iResourceProcessor, str, str2, this, function1);
                            }
                        });
                        return;
                    } else {
                        File file = iResourceProcessor != null ? iResourceProcessor.get(str, str2) : null;
                        ((OooO0OO) function1).invoke(Drawable.createFromPath(file != null ? file.getAbsolutePath() : null));
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e("AddHomeCustom2PopUpWind", "requestDrawable failed!", th2);
                ((OooO0OO) function1).invoke(null);
                return;
            }
        }
        ((OooO0OO) function1).invoke(null);
    }
}

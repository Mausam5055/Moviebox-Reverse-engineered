package com.cloud.tmc.miniapp.widget.pulldownrefresh.header;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO0;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.MiniRefreshState;
import com.cloud.tmc.miniutils.util.VibrateUtils;
import java.io.File;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0OO extends com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0 implements OooOO0 {
    public OooOOO0 OooO;
    public ImageView OooO0Oo;
    public String OooO0o;
    public TextView OooO0o0;
    public int OooO0oO;
    public int OooO0oo;
    public File OooOO0;
    public File OooOO0O;
    public File OooOO0o;
    public File OooOOO0;

    public /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[MiniRefreshState.values().length];
            try {
                iArr[MiniRefreshState.PULL_DOWN_TO_REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MiniRefreshState.REFRESHING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MiniRefreshState.REFRESH_RELEASED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MiniRefreshState.RELEASE_TO_REFRESH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            OooO00o = iArr;
        }
    }

    public static final class OooO0O0 extends Lambda implements Function1<Drawable, Unit> {
        public final /* synthetic */ ImageView OooO00o;
        public final /* synthetic */ Drawable OooO0O0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0O0(ImageView imageView, Drawable drawable) {
            super(1);
            this.OooO00o = imageView;
            this.OooO0O0 = drawable;
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            this.OooO00o.setImageDrawable(this.OooO0O0);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public OooO0OO(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Intrinsics.h(context, "context");
        this.OooO0oo = 500;
        this.OooO0O0 = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0Oo;
        View.inflate(context, R.layout.layout_sharp_news_header, this);
        this.OooO0Oo = (ImageView) findViewById(R.id.srl_classics_progress);
        TextView textView = (TextView) findViewById(R.id.srl_classics_title);
        this.OooO0o0 = textView;
        if (textView != null) {
            textView.setTextSize(0, com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(16.0f));
        }
        this.OooO0o = context.getString(R.string.srl_header_pulling);
        context.getString(R.string.srl_header_release);
        context.getString(R.string.srl_header_finish);
        context.getString(R.string.srl_header_failed);
        context.getString(R.string.srl_header_refreshing);
        setVisibility(4);
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    public int OooO00o(OooOOO miniRefreshLayout, boolean z10) {
        Intrinsics.h(miniRefreshLayout, "miniRefreshLayout");
        if (z10) {
            OooO00o(2);
            TextView textView = this.OooO0o0;
            if (textView != null) {
                textView.setText("");
            }
        }
        return this.OooO0oo;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0053  */
    /* JADX WARN: Code duplicated, block: B:30:0x0056  */
    public final void OooO00o(int i11) {
        ImageView imageView;
        File file;
        File file2;
        String absolutePath;
        Context context = getContext();
        if (context == null || (imageView = this.OooO0Oo) == null) {
            return;
        }
        if (i11 == 1) {
            file = this.OooOO0;
        } else if (i11 == 2) {
            file = this.OooOO0O;
        } else if (i11 != 3) {
            file = i11 != 4 ? null : this.OooOOO0;
        } else {
            file = this.OooOO0o;
        }
        if (!FileUtil.access(file)) {
            TmcLogger.d("MiniCustomHeader", "加载目标文件不存在，" + (file != null ? file.getAbsolutePath() : null));
            return;
        }
        if (i11 == 1) {
            file2 = this.OooOO0o;
        } else if (i11 == 2) {
            file2 = this.OooOOO0;
        } else if (i11 == 3) {
            file2 = this.OooOO0o;
        } else if (i11 != 4) {
            file2 = null;
        } else {
            file2 = this.OooOOO0;
        }
        if (!FileUtil.access(file2)) {
            TmcLogger.d("MiniCustomHeader", "加载占位图文件不存在，" + (file2 != null ? file2.getAbsolutePath() : null));
            return;
        }
        if (file2 != null) {
            try {
                absolutePath = file2.getAbsolutePath();
            } catch (Throwable th2) {
                TmcLogger.e("MiniCustomHeader", "Error loading image", th2);
                return;
            }
        } else {
            absolutePath = null;
        }
        Drawable drawableCreateFromPath = Drawable.createFromPath(absolutePath);
        if (i11 == 1) {
            ((ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class)).loadImgGifPlay(context, file, drawableCreateFromPath, imageView);
            return;
        }
        if (i11 == 2) {
            ((ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class)).loadImgGifPlayOnce(context, file, 0, imageView, new OooO0O0(imageView, drawableCreateFromPath));
        } else if (i11 == 3 || i11 == 4) {
            imageView.setImageDrawable(Drawable.createFromPath(file != null ? file.getAbsolutePath() : null));
        }
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    public void OooO00o(OooOOO0 kernel, int i11, int i12) {
        Intrinsics.h(kernel, "kernel");
        this.OooO = kernel;
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO0o
    public void OooO00o(OooOOO miniRefreshLayout, MiniRefreshState oldState, MiniRefreshState newState) {
        Intrinsics.h(miniRefreshLayout, "miniRefreshLayout");
        Intrinsics.h(oldState, "oldState");
        Intrinsics.h(newState, "newState");
        int i11 = OooO00o.OooO00o[newState.ordinal()];
        if (i11 == 1) {
            OooO00o(3);
            ImageView imageView = this.OooO0Oo;
            if (imageView != null) {
                ViewExtKt.toVisible(imageView);
            }
            TextView textView = this.OooO0o0;
            if (textView == null) {
                return;
            }
            textView.setText(this.OooO0o);
            return;
        }
        if (i11 == 2 || i11 == 3) {
            TextView textView2 = this.OooO0o0;
            if (textView2 == null) {
                return;
            }
            textView2.setText("");
            return;
        }
        if (i11 != 4) {
            return;
        }
        try {
            VibrateUtils.vibrate(100L);
        } catch (Throwable th2) {
            TmcLogger.e("MiniCustomHeader", "ReleaseToRefresh vibrate failed!", th2);
        }
        TextView textView3 = this.OooO0o0;
        if (textView3 == null) {
            return;
        }
        textView3.setText(this.OooO0o);
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    public void OooO00o(boolean z10, float f11, int i11, int i12, int i13) {
        setAlpha(RangesKt.e(0.0f, RangesKt.h(1.0f, f11)));
        if (i11 > this.OooO0oO) {
            if (getVisibility() != 0) {
                setVisibility(0);
            }
        } else if (getVisibility() != 4) {
            setVisibility(4);
        }
        if (i11 == 0) {
            OooO00o(3);
        }
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    public void OooO0O0(OooOOO miniRefreshLayout, int i11, int i12) {
        Intrinsics.h(miniRefreshLayout, "miniRefreshLayout");
        OooO00o(1);
    }
}

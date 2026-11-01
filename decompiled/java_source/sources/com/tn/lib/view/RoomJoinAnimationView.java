package com.tn.lib.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.noober.background.drawable.DrawableCreator;
import com.noober.background.view.BLFrameLayout;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$drawable;
import com.tn.lib.widget.R$layout;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u0015\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\fH\u0014¢\u0006\u0004\b\u0014\u0010\u000eJ\u000f\u0010\u0015\u001a\u00020\fH\u0014¢\u0006\u0004\b\u0015\u0010\u000eR\u0014\u0010\u0018\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u0019R\u0014\u0010 \u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u0019R\u0014\u0010\"\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\u0019R\u0014\u0010$\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\u0019R\u0014\u0010&\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010\u0019R\u0014\u0010(\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010\u0019R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u0010.\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010\u0019R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00104\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00101R\u0016\u00107\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0011\u0010\u0011\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b<\u0010=R\u0011\u0010>\u001a\u00020)8F¢\u0006\u0006\u001a\u0004\b>\u0010?¨\u0006@"}, d2 = {"Lcom/tn/lib/view/RoomJoinAnimationView;", "Lcom/noober/background/view/BLFrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "a", "()V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/tn/lib/view/RoomJoinStatus;", NotificationCompat.CATEGORY_STATUS, "setStatus", "(Lcom/tn/lib/view/RoomJoinStatus;)V", "onAttachedToWindow", "onDetachedFromWindow", "Lth/g;", "Lth/g;", "viewBinding", "I", "dp4", "c", "jvStyle", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "jvJoinBg", "e", "jvLoadingBg", "f", "jvViewBg", "g", "jvLoadingColor", "h", "jvJoinTextColor", "i", "jvJoinedTextColor", "", "j", "Z", "jvJoinedIconEnable", CampaignEx.JSON_KEY_AD_K, "jvJoinedIconRes", "", "l", "Ljava/lang/String;", "textJoin", "m", "textLeave", "n", "Lcom/tn/lib/view/RoomJoinStatus;", "curStatus", "Landroid/animation/ObjectAnimator;", "o", "Landroid/animation/ObjectAnimator;", "rotationAnimator", "getStatus", "()Lcom/tn/lib/view/RoomJoinStatus;", "isLoading", "()Z", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RoomJoinAnimationView extends BLFrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final th.g viewBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final int dp4;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final int jvStyle;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final int jvJoinBg;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final int jvLoadingBg;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final int jvViewBg;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final int jvLoadingColor;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final int jvJoinTextColor;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final int jvJoinedTextColor;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final boolean jvJoinedIconEnable;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final int jvJoinedIconRes;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String textJoin;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private String textLeave;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private RoomJoinStatus curStatus;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private ObjectAnimator rotationAnimator;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f41004a;

        static {
            int[] iArr = new int[RoomJoinStatus.values().length];
            try {
                iArr[RoomJoinStatus.JOIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RoomJoinStatus.LOADING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RoomJoinStatus.JOINED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f41004a = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RoomJoinAnimationView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RoomJoinAnimationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomJoinAnimationView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.dp4 = com.blankj.utilcode.util.a0.a(4.0f);
        RoomJoinStatus roomJoinStatus = RoomJoinStatus.JOIN;
        this.curStatus = roomJoinStatus;
        View.inflate(context, R$layout.view_room_join, this);
        th.g gVarA = th.g.a(this);
        Intrinsics.g(gVarA, "bind(...)");
        this.viewBinding = gVarA;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RoomJoinAnimationView, 0, 0);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.RoomJoinAnimationView_jv_style, 0);
        this.jvStyle = i12;
        this.jvJoinBg = typedArrayObtainStyledAttributes.getColor(R$styleable.RoomJoinAnimationView_jv_text_join_bg, -1);
        this.jvLoadingBg = typedArrayObtainStyledAttributes.getColor(R$styleable.RoomJoinAnimationView_jv_text_loading_bg, Utils.a().getResources().getColor(R$color.white_20));
        this.jvViewBg = typedArrayObtainStyledAttributes.getColor(R$styleable.RoomJoinAnimationView_jv_text_joined_bg, Utils.a().getResources().getColor(R$color.white_20));
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.RoomJoinAnimationView_jv_text_loading_color, Utils.a().getResources().getColor(R$color.white_80));
        this.jvLoadingColor = color;
        this.jvJoinTextColor = typedArrayObtainStyledAttributes.getColor(R$styleable.RoomJoinAnimationView_jv_text_join_text_color, ViewCompat.MEASURED_STATE_MASK);
        this.jvJoinedTextColor = typedArrayObtainStyledAttributes.getColor(R$styleable.RoomJoinAnimationView_jv_text_joined_text_color, ViewCompat.MEASURED_STATE_MASK);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoomJoinAnimationView_jv_text_text_size, 14.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoomJoinAnimationView_jv_text_loading_size, 16.0f);
        this.textJoin = typedArrayObtainStyledAttributes.getString(R$styleable.RoomJoinAnimationView_jv_text_join_text);
        this.textLeave = typedArrayObtainStyledAttributes.getString(R$styleable.RoomJoinAnimationView_jv_text_joined_text);
        this.jvJoinedIconEnable = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RoomJoinAnimationView_jv_text_joined_icon_enable, false);
        this.jvJoinedIconRes = typedArrayObtainStyledAttributes.getResourceId(R$styleable.RoomJoinAnimationView_jv_text_joined_icon, 0);
        String str = this.textJoin;
        if (str == null || str.length() == 0) {
            this.textJoin = Utils.a().getString(R$string.Join);
        }
        String str2 = this.textLeave;
        if (str2 == null || str2.length() == 0) {
            this.textLeave = Utils.a().getString(R$string.Leave);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (i12 == 0) {
            AppCompatTextView tvJoin = gVarA.f76246d;
            Intrinsics.g(tvJoin, "tvJoin");
            jg.c.g(tvJoin);
            ProgressBar pbLoading = gVarA.f76245c;
            Intrinsics.g(pbLoading, "pbLoading");
            jg.c.g(pbLoading);
            AppCompatImageView ivJoin = gVarA.f76244b;
            Intrinsics.g(ivJoin, "ivJoin");
            jg.c.k(ivJoin);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(gVarA.f76244b, "rotation", 0.0f, 360.0f);
            objectAnimatorOfFloat.setDuration(1000L);
            objectAnimatorOfFloat.setRepeatCount(-1);
            objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            this.rotationAnimator = objectAnimatorOfFloat;
        } else {
            AppCompatTextView tvJoin2 = gVarA.f76246d;
            Intrinsics.g(tvJoin2, "tvJoin");
            jg.c.k(tvJoin2);
            ProgressBar pbLoading2 = gVarA.f76245c;
            Intrinsics.g(pbLoading2, "pbLoading");
            jg.c.k(pbLoading2);
            AppCompatImageView ivJoin2 = gVarA.f76244b;
            Intrinsics.g(ivJoin2, "ivJoin");
            jg.c.g(ivJoin2);
            gVarA.f76246d.setTextSize(dimension);
            gVarA.f76246d.setTextSize(0, dimension);
            ViewGroup.LayoutParams layoutParams = gVarA.f76245c.getLayoutParams();
            if (layoutParams == null) {
                int i13 = (int) dimension2;
                layoutParams = new FrameLayout.LayoutParams(i13, i13);
            }
            int i14 = (int) dimension2;
            layoutParams.width = i14;
            layoutParams.height = i14;
            gVarA.f76245c.setLayoutParams(layoutParams);
            gVarA.f76245c.setIndeterminateTintList(ColorStateList.valueOf(color));
        }
        setStatus(roomJoinStatus);
    }

    private final void a() {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2 = this.rotationAnimator;
        if ((objectAnimator2 == null || !objectAnimator2.isRunning()) && (objectAnimator = this.rotationAnimator) != null) {
            objectAnimator.start();
        }
    }

    private final void b() {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2 = this.rotationAnimator;
        if (objectAnimator2 == null || !objectAnimator2.isRunning() || (objectAnimator = this.rotationAnimator) == null) {
            return;
        }
        objectAnimator.cancel();
    }

    /* JADX INFO: renamed from: getStatus, reason: from getter */
    public final RoomJoinStatus getCurStatus() {
        return this.curStatus;
    }

    public final boolean isLoading() {
        return this.curStatus == RoomJoinStatus.LOADING;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.curStatus == RoomJoinStatus.LOADING) {
            a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    public final void setStatus(RoomJoinStatus status) {
        String str;
        int i11;
        int i12;
        int i13;
        Intrinsics.h(status, "status");
        this.curStatus = status;
        if (this.jvStyle == 0) {
            AppCompatImageView appCompatImageView = this.viewBinding.f76244b;
            int i14 = a.f41004a[status.ordinal()];
            if (i14 == 1) {
                i13 = R$mipmap.ic_room_join_def_new;
            } else if (i14 == 2) {
                i13 = R$mipmap.ic_room_join_loading_new;
            } else {
                if (i14 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                i13 = R$mipmap.ic_room_join_view_new;
            }
            appCompatImageView.setImageResource(i13);
            if (status == RoomJoinStatus.LOADING) {
                a();
                return;
            } else {
                this.viewBinding.f76244b.setRotation(0.0f);
                b();
                return;
            }
        }
        ProgressBar pbLoading = this.viewBinding.f76245c;
        Intrinsics.g(pbLoading, "pbLoading");
        jg.c.g(pbLoading);
        AppCompatTextView appCompatTextView = this.viewBinding.f76246d;
        int[] iArr = a.f41004a;
        int i15 = iArr[status.ordinal()];
        if (i15 == 1) {
            str = this.textJoin;
        } else if (i15 == 2) {
            ProgressBar pbLoading2 = this.viewBinding.f76245c;
            Intrinsics.g(pbLoading2, "pbLoading");
            jg.c.k(pbLoading2);
            str = "";
        } else {
            if (i15 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            str = this.textLeave;
        }
        appCompatTextView.setText(str);
        int i16 = iArr[status.ordinal()];
        if (i16 == 1) {
            i11 = this.jvJoinBg;
        } else if (i16 == 2) {
            i11 = this.jvLoadingBg;
        } else {
            if (i16 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            i11 = this.jvViewBg;
        }
        setBackground(new DrawableCreator.Builder().setCornersRadius(this.dp4).setSolidColor(i11).build());
        int i17 = iArr[status.ordinal()];
        if (i17 == 1 || i17 == 2) {
            i12 = this.jvJoinTextColor;
        } else {
            if (i17 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            i12 = this.jvJoinedTextColor;
        }
        this.viewBinding.f76246d.setTextColor(i12);
        int i18 = iArr[status.ordinal()];
        if (i18 == 1) {
            this.viewBinding.f76246d.setCompoundDrawablesWithIntrinsicBounds(R$drawable.room_ic_add, 0, 0, 0);
            return;
        }
        if (i18 != 3) {
            this.viewBinding.f76246d.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            return;
        }
        if (!this.jvJoinedIconEnable) {
            this.viewBinding.f76246d.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            return;
        }
        int i19 = this.jvJoinedIconRes;
        if (i19 == 0) {
            i19 = 0;
        }
        this.viewBinding.f76246d.setCompoundDrawablesWithIntrinsicBounds(i19, 0, 0, 0);
    }
}

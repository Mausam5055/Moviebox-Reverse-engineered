package com.transsion.room.view;

import android.content.Context;
import android.text.TextUtils;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import j00.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import tj.c;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u0019\u0010\u0017\u001a\u00020\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u0019\u001a\u00020\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0019\u0010\u0018J!\u0010\u001c\u001a\u00020\u000b2\u0010\u0010\u001b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ/\u0010\"\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J/\u0010%\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010$\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b%\u0010#J\r\u0010&\u001a\u00020\b¢\u0006\u0004\b&\u0010'J\u0015\u0010)\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\b¢\u0006\u0004\b)\u0010\u0013J\r\u0010*\u001a\u00020\b¢\u0006\u0004\b*\u0010'J\u0015\u0010,\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\b¢\u0006\u0004\b,\u0010\u0013R\u0016\u0010/\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00101\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010.R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104¨\u00066"}, d2 = {"Lcom/transsion/room/view/RoomListMainTabTitleView;", "Landroidx/appcompat/widget/AppCompatTextView;", "Lj00/d;", "Ltj/a;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "index", "totalCount", "", "onSelected", "(II)V", "onDeselected", "changeLocal", "()V", "resId", "setTextById", "(I)V", "setHintById", "", "srt", "setHintWithString", "(Ljava/lang/CharSequence;)V", "setTextWithString", "Lkotlin/Function0;", EventConstants.KEY_ACTION, "setTextAction", "(Lkotlin/jvm/functions/Function0;)V", "", "leavePercent", "", "leftToRight", "onLeave", "(IIFZ)V", "enterPercent", "onEnter", "getSelectedColor", "()I", "selectedColor", "setSelectedColor", "getNormalColor", "normalColor", "setNormalColor", "a", "I", "mSelectedColor", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "mNormalColor", "Ltj/c;", "c", "Ltj/c;", "textDelegate", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RoomListMainTabTitleView extends AppCompatTextView implements d, tj.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int mSelectedColor;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int mNormalColor;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final c textDelegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomListMainTabTitleView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.mNormalColor = androidx.core.content.b.getColor(context, R$color.text_02);
        this.mSelectedColor = androidx.core.content.b.getColor(context, R$color.text_01);
        setTextSize(14.0f);
        setGravity(17);
        setMinWidth(a0.a(120.0f));
        setSingleLine();
        setEllipsize(TextUtils.TruncateAt.END);
        this.textDelegate = new c(this);
    }

    @Override // tj.a
    public void changeLocal() {
        this.textDelegate.changeLocal();
    }

    /* JADX INFO: renamed from: getNormalColor, reason: from getter */
    public final int getMNormalColor() {
        return this.mNormalColor;
    }

    /* JADX INFO: renamed from: getSelectedColor, reason: from getter */
    public final int getMSelectedColor() {
        return this.mSelectedColor;
    }

    @Override // j00.d
    public void onDeselected(int index, int totalCount) {
        setTextColor(this.mNormalColor);
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        setTypeface(jg.a.d(context));
    }

    @Override // j00.d
    public void onEnter(int index, int totalCount, float enterPercent, boolean leftToRight) {
    }

    @Override // j00.d
    public void onLeave(int index, int totalCount, float leavePercent, boolean leftToRight) {
    }

    @Override // j00.d
    public void onSelected(int index, int totalCount) {
        setTextColor(this.mSelectedColor);
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        setTypeface(jg.a.c(context));
    }

    public void setHintById(int resId) {
        this.textDelegate.b(resId);
    }

    public void setHintWithString(CharSequence srt) {
        this.textDelegate.c(srt);
    }

    public void setLocalChangeListener(Function0<Unit> function0) {
        tj.a.C0925a.a(this, function0);
    }

    public final void setNormalColor(int normalColor) {
        this.mNormalColor = normalColor;
    }

    public final void setSelectedColor(int selectedColor) {
        this.mSelectedColor = selectedColor;
    }

    public void setTextAction(Function0<? extends CharSequence> action) {
        this.textDelegate.e(action);
    }

    public void setTextById(int resId) {
        this.textDelegate.f(resId);
    }

    public void setTextWithString(CharSequence srt) {
        this.textDelegate.g(srt);
    }
}

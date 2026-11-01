package com.transsion.shorttv.base.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000f\b\u0016\u0018\u0000 &2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001'B\u0007¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000e\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0010\u0010\rJ\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u001a\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001f\u0010\u001eJ\u001f\u0010!\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0015H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0015H\u0016¢\u0006\u0004\b#\u0010$R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010%¨\u0006("}, d2 = {"Lcom/transsion/shorttv/base/widget/BaseLoadMoreView;", "Lq6/a;", "Landroid/view/View$OnAttachStateChangeListener;", "Landroid/os/Parcelable;", "<init>", "()V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "Landroid/view/View;", "getLoadComplete", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;", "getLoadEndView", "getLoadFailView", "getLoadingView", "Landroid/view/ViewGroup;", "parent", "getRootView", "(Landroid/view/ViewGroup;)Landroid/view/View;", "", RequestParameters.POSITION, "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;", "loadMoreStatus", "", "convert", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILcom/chad/library/adapter/base/loadmore/LoadMoreStatus;)V", "p0", "onViewAttachedToWindow", "(Landroid/view/View;)V", "onViewDetachedFromWindow", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;", "CREATOR", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class BaseLoadMoreView extends q6.a implements View.OnAttachStateChangeListener, Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private LoadMoreStatus loadMoreStatus;

    /* JADX INFO: renamed from: com.transsion.shorttv.base.widget.BaseLoadMoreView$a, reason: from kotlin metadata */
    public static final class Companion implements Parcelable.Creator {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public q6.a createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new BaseLoadMoreView(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public q6.a[] newArray(int i11) {
            return new q6.a[i11];
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52834a;

        static {
            int[] iArr = new int[LoadMoreStatus.values().length];
            try {
                iArr[LoadMoreStatus.Loading.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f52834a = iArr;
        }
    }

    public BaseLoadMoreView() {
        this.loadMoreStatus = LoadMoreStatus.Complete;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseLoadMoreView(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
    }

    @Override // q6.a
    public void convert(BaseViewHolder holder, int position, LoadMoreStatus loadMoreStatus) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(loadMoreStatus, "loadMoreStatus");
        this.loadMoreStatus = loadMoreStatus;
        super.convert(holder, position, loadMoreStatus);
        if (b.f52834a[loadMoreStatus.ordinal()] == 1) {
            yr.b.e(getLoadingView(holder));
        } else {
            yr.b.b(getLoadingView(holder));
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // q6.a
    public View getLoadComplete(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        View viewFindViewById = holder.itemView.findViewById(R$id.tv_complete);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        return viewFindViewById;
    }

    @Override // q6.a
    public View getLoadEndView(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        View viewFindViewById = holder.itemView.findViewById(R$id.tv_no_more);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        return viewFindViewById;
    }

    @Override // q6.a
    public View getLoadFailView(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        View viewFindViewById = holder.itemView.findViewById(R$id.tv_err);
        AppCompatTextView appCompatTextView = (AppCompatTextView) viewFindViewById;
        appCompatTextView.setText(nh.m.f70474a.e() ? appCompatTextView.getContext().getString(R$string.short_tv_error_load_failed) : appCompatTextView.getContext().getString(R$string.short_tv_net_err));
        Intrinsics.g(viewFindViewById, "apply(...)");
        return viewFindViewById;
    }

    @Override // q6.a
    public View getLoadingView(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        View viewFindViewById = holder.itemView.findViewById(R$id.load_view);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        return viewFindViewById;
    }

    @Override // q6.a
    public View getRootView(ViewGroup parent) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.short_tv_base_item_load_more, parent, false);
        viewInflate.addOnAttachStateChangeListener(this);
        Intrinsics.e(viewInflate);
        return viewInflate;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View p11) {
        ProgressBar progressBar;
        Intrinsics.h(p11, "p0");
        if (this.loadMoreStatus != LoadMoreStatus.Loading || (progressBar = (ProgressBar) p11.findViewById(R$id.load_view)) == null) {
            return;
        }
        yr.b.e(progressBar);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View p11) {
        Intrinsics.h(p11, "p0");
        ProgressBar progressBar = (ProgressBar) p11.findViewById(R$id.load_view);
        if (progressBar != null) {
            yr.b.b(progressBar);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
    }
}

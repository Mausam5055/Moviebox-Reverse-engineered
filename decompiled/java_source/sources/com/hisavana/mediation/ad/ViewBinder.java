package com.hisavana.mediation.ad;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ViewBinder {
    public final List<Integer> actionIds;
    public View actionView;
    public final int adBadgeView;
    public final int adChoicesView;
    public final int adCloseView;
    public final int adDisclaimerView;
    public final int adStoreMarkView;
    public final int callToActionId;
    public final int descriptionId;
    public final int domainId;
    public final int downloadsId;
    public final int feedbackId;
    public Drawable iconDrawable;
    public final int iconId;
    public View layout;
    public final int layoutId;
    public final int likesId;
    public final int mediaId;
    public final int mode;
    public final int priceId;
    public final int ratingId;
    public final int sourceSizeId;
    public final int sponsoredId;
    public final int titleId;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f33187a;
        public View actionView;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f33188b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f33189c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f33190d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f33191e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f33192f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f33193g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f33194h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f33195i;
        public Drawable iconDrawable;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f33196j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f33197k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f33198l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f33199m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f33200n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f33201o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public List<Integer> f33202p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public View f33203q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f33204r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f33205s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f33206t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f33207u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f33208v;

        public Builder(int i11) {
            this.f33187a = i11;
        }

        public Builder(@NonNull View view) {
            this.f33203q = view;
        }

        @NonNull
        public final Builder actionIds(Integer... numArr) {
            this.f33202p = Arrays.asList(numArr);
            return this;
        }

        public final Builder adBadgeView(int i11) {
            this.f33199m = i11;
            return this;
        }

        @NonNull
        public final Builder adChoicesView(int i11) {
            this.f33200n = i11;
            return this;
        }

        public final Builder adCloseView(int i11) {
            this.f33201o = i11;
            return this;
        }

        public final Builder adDisclaimerView(int i11) {
            this.f33198l = i11;
            return this;
        }

        @NonNull
        public final ViewBinder build() {
            return new ViewBinder(this);
        }

        @NonNull
        public final Builder callToActionId(int i11) {
            this.f33190d = i11;
            return this;
        }

        public final Builder contextMode(int i11) {
            this.f33204r = i11;
            return this;
        }

        @NonNull
        public final Builder descriptionId(int i11) {
            this.f33192f = i11;
            return this;
        }

        public final Builder domainView(int i11) {
            this.f33206t = i11;
            return this;
        }

        @NonNull
        public final Builder downloadsId(int i11) {
            this.f33197k = i11;
            return this;
        }

        public final Builder feedbackView(int i11) {
            this.f33207u = i11;
            return this;
        }

        public final Builder iconDrawable(Drawable drawable) {
            this.iconDrawable = drawable;
            return this;
        }

        @NonNull
        public final Builder iconId(int i11) {
            this.f33189c = i11;
            return this;
        }

        @NonNull
        public final Builder likesId(int i11) {
            this.f33195i = i11;
            return this;
        }

        @NonNull
        public final Builder mediaId(int i11) {
            this.f33191e = i11;
            return this;
        }

        @NonNull
        public final Builder priceId(int i11) {
            this.f33196j = i11;
            return this;
        }

        @NonNull
        public final Builder ratingId(int i11) {
            this.f33194h = i11;
            return this;
        }

        public Builder setActionView(View view) {
            this.actionView = view;
            return this;
        }

        @NonNull
        public final Builder sourceSizeId(int i11) {
            this.f33208v = i11;
            return this;
        }

        @NonNull
        public final Builder sponsoredId(int i11) {
            this.f33193g = i11;
            return this;
        }

        public final Builder storeMarkView(int i11) {
            this.f33205s = i11;
            return this;
        }

        @NonNull
        public final Builder titleId(int i11) {
            this.f33188b = i11;
            return this;
        }
    }

    public ViewBinder(@NonNull Builder builder) {
        this.layoutId = builder.f33187a;
        this.layout = builder.f33203q;
        this.titleId = builder.f33188b;
        this.callToActionId = builder.f33190d;
        this.iconId = builder.f33189c;
        this.mediaId = builder.f33191e;
        this.descriptionId = builder.f33192f;
        this.sponsoredId = builder.f33193g;
        this.ratingId = builder.f33194h;
        this.likesId = builder.f33195i;
        this.priceId = builder.f33196j;
        this.downloadsId = builder.f33197k;
        this.actionIds = builder.f33202p;
        this.mode = builder.f33204r;
        this.adDisclaimerView = builder.f33198l;
        this.adBadgeView = builder.f33199m;
        this.adChoicesView = builder.f33200n;
        this.adCloseView = builder.f33201o;
        this.adStoreMarkView = builder.f33205s;
        this.domainId = builder.f33206t;
        this.feedbackId = builder.f33207u;
        this.iconDrawable = builder.iconDrawable;
        this.actionView = builder.actionView;
        this.sourceSizeId = builder.f33208v;
    }
}

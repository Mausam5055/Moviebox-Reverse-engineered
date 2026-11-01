package com.transsion.wrapperad.view.cardpage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.wrapperad.R$id;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class e extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f58341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f58342b;

    public static final class a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CardView f58343a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final FrameLayout f58344b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View itemView) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            View viewFindViewById = itemView.findViewById(R$id.cardView);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            this.f58343a = (CardView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R$id.ad_container);
            Intrinsics.g(viewFindViewById2, "findViewById(...)");
            this.f58344b = (FrameLayout) viewFindViewById2;
        }

        public final Object f(f pageData) {
            Object objM454constructorimpl;
            Intrinsics.h(pageData, "pageData");
            try {
                Result.Companion companion = Result.INSTANCE;
                NativeCardPageAdHelper nativeCardPageAdHelperC = pageData.c();
                if (nativeCardPageAdHelperC != null) {
                    nativeCardPageAdHelperC.w(pageData);
                }
                ViewParent parent = pageData.d().getParent();
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup != null) {
                    viewGroup.removeView(pageData.d());
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                pageData.d().setAlpha(0.0f);
                pageData.d().setScaleX(1.05f);
                this.f58344b.addView(pageData.d(), layoutParams);
                pageData.d().animate().alpha(1.0f).scaleX(1.0f).setDuration(600L).setListener(null).start();
                NativeCardPageAdHelper nativeCardPageAdHelperC2 = pageData.c();
                if (nativeCardPageAdHelperC2 != null) {
                    nativeCardPageAdHelperC2.s(pageData);
                }
                objM454constructorimpl = Result.m454constructorimpl(Boolean.TRUE);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Result.m457exceptionOrNullimpl(objM454constructorimpl);
            return objM454constructorimpl;
        }

        public final FrameLayout g() {
            return this.f58344b;
        }

        public final CardView h() {
            return this.f58343a;
        }
    }

    public e(List pageItemDataList, int i11) {
        Intrinsics.h(pageItemDataList, "pageItemDataList");
        this.f58341a = pageItemDataList;
        this.f58342b = i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(a holder, int i11) {
        Intrinsics.h(holder, "holder");
        holder.h().getLayoutParams().width = this.f58342b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f58341a.isEmpty() ? 0 : Integer.MAX_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        ey.c cVarC = ey.c.c(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.g(cVarC, "inflate(...)");
        FrameLayout root = cVarC.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        return new a(root);
    }
}

package com.transsion.shorttv.ui.adapter.provider;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.ShortTvItemType;
import com.transsion.shorttv.ui.widget.ShortTVDiscoverHeaderView;
import com.transsion.shorttv.ui.widget.ShortTvCategoryView;
import com.transsion.shorttv.ui.widget.ShortTvOpAppointmentView;
import com.transsion.shorttv.ui.widget.ShortTvOpCustomView;
import com.transsion.shorttv.ui.widget.ShortTvOpRankingView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f53173e;

    /* JADX INFO: renamed from: com.transsion.shorttv.ui.adapter.provider.a$a, reason: collision with other inner class name */
    public /* synthetic */ class C0665a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53174a;

        static {
            int[] iArr = new int[ShortTvItemType.values().length];
            try {
                iArr[ShortTvItemType.APPOINTMENT_LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShortTvItemType.CUSTOM_DATA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShortTvItemType.OP_SUBJECTS_MOVIE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ShortTvItemType.PLAY_LIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ShortTvItemType.FILTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f53174a = iArr;
        }
    }

    public a(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.f53173e = pageName;
    }

    private final boolean z(View view, ShortTvItemType shortTvItemType) {
        int i11 = shortTvItemType == null ? -1 : C0665a.f53174a[shortTvItemType.ordinal()];
        if (i11 == 1) {
            return view instanceof ShortTvOpAppointmentView;
        }
        if (i11 == 2) {
            return view instanceof ShortTvOpCustomView;
        }
        if (i11 == 3) {
            return view instanceof ShortTvOpRankingView;
        }
        if (i11 == 4) {
            return view instanceof ShortTVDiscoverHeaderView;
        }
        if (i11 != 5) {
            return false;
        }
        return view instanceof ShortTvCategoryView;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 0;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.layout_view_container;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:57:0x013a  */
    /* JADX WARN: Code duplicated, block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:? A[RETURN, SYNTHETIC] */
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, xs.a item) {
        int i11;
        View shortTvOpAppointmentView;
        View shortTvOpAppointmentView2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        FrameLayout frameLayout = (FrameLayout) helper.getView(R$id.root);
        if (item.e() != null) {
            ViewParent parent = item.e().getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(item.e());
            }
            frameLayout.removeAllViews();
            frameLayout.addView(item.e());
            return;
        }
        OperateItem operateItemA = item.a();
        if (operateItemA == null) {
            return;
        }
        Context contextK = k();
        ShortTvItemType.Companion companion = ShortTvItemType.INSTANCE;
        String type = operateItemA.getType();
        if (type == null) {
            type = "";
        }
        ShortTvItemType shortTvItemTypeA = companion.a(type);
        View childAt = frameLayout.getChildAt(0);
        View shortTvCategoryView = null;
        if (childAt == null || !z(childAt, shortTvItemTypeA)) {
            frameLayout.removeAllViews();
            i11 = shortTvItemTypeA != null ? C0665a.f53174a[shortTvItemTypeA.ordinal()] : -1;
            if (i11 == 1) {
                shortTvOpAppointmentView = new ShortTvOpAppointmentView(this.f53173e, operateItemA, item.c(), item.f(), contextK);
            } else if (i11 == 2) {
                shortTvOpAppointmentView = new ShortTvOpCustomView(this.f53173e, operateItemA, item.c(), item.f(), contextK);
            } else {
                if (i11 != 3) {
                    if (i11 == 4) {
                        shortTvOpAppointmentView = new ShortTVDiscoverHeaderView(this.f53173e, operateItemA, item.c(), item.f(), contextK);
                    } else if (i11 == 5) {
                        shortTvCategoryView = new ShortTvCategoryView(contextK);
                    }
                    if (shortTvCategoryView != null) {
                        frameLayout.addView(shortTvCategoryView);
                        return;
                    }
                    return;
                }
                shortTvOpAppointmentView = new ShortTvOpRankingView(this.f53173e, operateItemA, item.c(), item.f(), contextK);
            }
            shortTvCategoryView = shortTvOpAppointmentView;
            if (shortTvCategoryView != null) {
                frameLayout.addView(shortTvCategoryView);
                return;
            }
            return;
        }
        frameLayout.removeAllViews();
        i11 = shortTvItemTypeA != null ? C0665a.f53174a[shortTvItemTypeA.ordinal()] : -1;
        if (i11 == 1) {
            shortTvOpAppointmentView2 = new ShortTvOpAppointmentView(this.f53173e, operateItemA, item.c(), item.f(), contextK);
        } else if (i11 == 2) {
            shortTvOpAppointmentView2 = new ShortTvOpCustomView(this.f53173e, operateItemA, item.c(), item.f(), contextK);
        } else {
            if (i11 != 3) {
                if (i11 == 4) {
                    shortTvOpAppointmentView2 = new ShortTVDiscoverHeaderView(this.f53173e, operateItemA, item.c(), item.f(), contextK);
                } else if (i11 == 5) {
                    shortTvCategoryView = new ShortTvCategoryView(contextK);
                }
                if (shortTvCategoryView != null) {
                    frameLayout.addView(shortTvCategoryView);
                }
            }
            shortTvOpAppointmentView2 = new ShortTvOpRankingView(this.f53173e, operateItemA, item.c(), item.f(), contextK);
        }
        shortTvCategoryView = shortTvOpAppointmentView2;
        if (shortTvCategoryView != null) {
            frameLayout.addView(shortTvCategoryView);
        }
    }
}

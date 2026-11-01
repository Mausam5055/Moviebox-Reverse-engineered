package com.transsion.ad.test.ad_config;

import android.graphics.Color;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.p009lifecycle.v;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.ToastUtils;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tencent.mmkv.MMKV;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.db.mcc.LocalMcc;
import com.transsion.ad.test.TestBaseActivity;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import ji.q;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0002!%B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J)\u0010\u0010\u001a\u00020\u00042\u0010\u0010\r\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\u00042\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001e\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0014¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010*\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006+"}, d2 = {"Lcom/transsion/ad/test/ad_config/TestAdMccActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "initView", "a0", "", "iso", "f0", "(Ljava/lang/String;)V", "e0", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "adapter", "", RequestParameters.POSITION, "g0", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V", "Lcom/transsion/ad/test/ad_config/TestAdMccActivity$b;", "newEntity", "h0", "(Lcom/transsion/ad/test/ad_config/TestAdMccActivity$b;)V", "Lcom/transsion/ad/db/mcc/LocalMcc;", "localMcc", "i0", "(Lcom/transsion/ad/db/mcc/LocalMcc;)V", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lcom/transsion/ad/test/ad_config/TestAdMccActivity$a;", "a", "Lcom/transsion/ad/test/ad_config/TestAdMccActivity$a;", "nationalInformationAdapter", "Lji/q;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lji/q;", "binding", "c", "I", "checkedPosition", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TestAdMccActivity extends TestBaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private a nationalInformationAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private q binding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int checkedPosition = -1;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/ad/test/ad_config/TestAdMccActivity$a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/ad/test/ad_config/TestAdMccActivity$b;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ad/test/ad_config/TestAdMccActivity$b;)V", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class a extends BaseQuickAdapter {
        public a() {
            super(R$layout.test_item_national_information_layout, null, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
        public void F(BaseViewHolder holder, b item) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            LinearLayout linearLayout = (LinearLayout) holder.getView(R$id.llRoot);
            if (item.b()) {
                linearLayout.setBackgroundColor(Color.parseColor("#10A84D"));
            } else {
                linearLayout.setBackgroundColor(Color.parseColor("#1A10A84D"));
            }
            holder.setText(R$id.tvCountry, "Country : " + item.a().getCountry());
            holder.setText(R$id.tvMcc, "Mcc : " + item.a().getMcc());
            holder.setText(R$id.tvIso, "Iso : " + item.a().getIso());
            holder.setText(R$id.tvCountryCode, "CountryCode : " + item.a().getCountryCode());
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f42255a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final LocalMcc f42256b;

        public b(boolean z10, LocalMcc localMcc) {
            Intrinsics.h(localMcc, "localMcc");
            this.f42255a = z10;
            this.f42256b = localMcc;
        }

        public final LocalMcc a() {
            return this.f42256b;
        }

        public final boolean b() {
            return this.f42255a;
        }

        public final void c(boolean z10) {
            this.f42255a = z10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f42255a == bVar.f42255a && Intrinsics.c(this.f42256b, bVar.f42256b);
        }

        public int hashCode() {
            return (androidx.compose.foundation.e.a(this.f42255a) * 31) + this.f42256b.hashCode();
        }

        public String toString() {
            return "NationalInformationEntity(isChecked=" + this.f42255a + ", localMcc=" + this.f42256b + ")";
        }
    }

    public static final class c extends RecyclerView.l {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            if (parent.getAdapter() != null && childAdapterPosition == 0) {
                outRect.top = a0.a(8.0f);
            }
            outRect.bottom = a0.a(16.0f);
        }
    }

    private final void a0() {
        AppCompatEditText appCompatEditText;
        Button button;
        q qVar = this.binding;
        if (qVar != null && (button = qVar.f66165c) != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_config.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TestAdMccActivity.b0(this.f42265a, view);
                }
            });
        }
        q qVar2 = this.binding;
        if (qVar2 == null || (appCompatEditText = qVar2.f66166d) == null) {
            return;
        }
        appCompatEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.transsion.ad.test.ad_config.b
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i11, KeyEvent keyEvent) {
                return TestAdMccActivity.c0(this.f42266a, textView, i11, keyEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(TestAdMccActivity testAdMccActivity, View view) {
        ToastUtils.s("重置自定义数据", new Object[0]);
        testAdMccActivity.checkedPosition = -1;
        testAdMccActivity.h0(null);
        a aVar = testAdMccActivity.nationalInformationAdapter;
        if (aVar != null) {
            aVar.n1(null);
        }
        testAdMccActivity.e0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c0(TestAdMccActivity testAdMccActivity, TextView textView, int i11, KeyEvent keyEvent) {
        if (i11 != 3) {
            return true;
        }
        testAdMccActivity.f0(String.valueOf(textView != null ? textView.getText() : null));
        Object systemService = testAdMccActivity.getSystemService("input_method");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).hideSoftInputFromWindow(textView != null ? textView.getWindowToken() : null, 0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0(TestAdMccActivity testAdMccActivity, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        testAdMccActivity.g0(adapter, i11);
    }

    private final void e0() {
        kotlinx.coroutines.k.d(v.a(this), null, null, new TestAdMccActivity$loadData$1(this, null), 3, null);
    }

    private final void f0(String iso) {
        List<Object> data;
        q qVar;
        RecyclerView recyclerView;
        RecyclerView.m layoutManager;
        a aVar = this.nationalInformationAdapter;
        if (aVar == null || (data = aVar.getData()) == null) {
            return;
        }
        Iterator<Object> it = data.iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            } else if (Intrinsics.c(((b) it.next()).a().getIso(), iso)) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 >= 0) {
            a aVar2 = this.nationalInformationAdapter;
            if (i11 >= (aVar2 != null ? aVar2.getItemCount() : 0) || (qVar = this.binding) == null || (recyclerView = qVar.f66168f) == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
                return;
            }
            layoutManager.scrollToPosition(i11);
        }
    }

    private final void g0(BaseQuickAdapter adapter, int position) {
        List<Object> data;
        List<Object> data2;
        Object obj = (adapter == null || (data2 = adapter.getData()) == null) ? null : data2.get(position);
        b bVar = obj instanceof b ? (b) obj : null;
        if (bVar != null) {
            bVar.c(true);
        }
        a aVar = this.nationalInformationAdapter;
        if (aVar != null) {
            aVar.notifyItemChanged(position);
        }
        i0(bVar != null ? bVar.a() : null);
        h0(bVar);
        if (this.checkedPosition >= 0) {
            Object obj2 = (adapter == null || (data = adapter.getData()) == null) ? null : data.get(this.checkedPosition);
            b bVar2 = obj2 instanceof b ? (b) obj2 : null;
            if (bVar2 != null) {
                bVar2.c(false);
            }
            a aVar2 = this.nationalInformationAdapter;
            if (aVar2 != null) {
                aVar2.notifyItemChanged(this.checkedPosition);
            }
        }
        this.checkedPosition = position;
    }

    private final void h0(b newEntity) {
        LocalMcc localMccA;
        String countryCode;
        String country;
        LocalMcc localMccA2;
        String iso;
        LocalMcc localMccA3;
        String mcc;
        LocalMcc localMccA4;
        bh.a.C0148a c0148a = bh.a.f16469a;
        MMKV mmkvC = c0148a.c();
        String str = "";
        if (mmkvC != null) {
            if (newEntity == null || (localMccA4 = newEntity.a()) == null || (mcc = localMccA4.getMcc()) == null) {
                mcc = "";
            }
            mmkvC.putString("sp_code", mcc);
        }
        MMKV mmkvC2 = c0148a.c();
        if (mmkvC2 != null) {
            if (newEntity == null || (localMccA3 = newEntity.a()) == null || (iso = localMccA3.getIso()) == null) {
                iso = "";
            }
            mmkvC2.putString("custom_local_iso", iso);
        }
        MMKV mmkvC3 = c0148a.c();
        if (mmkvC3 != null) {
            if (newEntity == null || (localMccA2 = newEntity.a()) == null || (country = localMccA2.getCountry()) == null) {
                country = "";
            }
            mmkvC3.putString("custom_local_country", country);
        }
        MMKV mmkvC4 = c0148a.c();
        if (mmkvC4 != null) {
            if (newEntity != null && (localMccA = newEntity.a()) != null && (countryCode = localMccA.getCountryCode()) != null) {
                str = countryCode;
            }
            mmkvC4.putString("custom_country_code", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i0(LocalMcc localMcc) {
        Button button;
        String str = "Country : + " + (localMcc != null ? localMcc.getCountry() : null) + " -- Mcc : " + (localMcc != null ? localMcc.getMcc() : null) + " -- Iso : " + (localMcc != null ? localMcc.getIso() : null) + " -- CountryCode : " + (localMcc != null ? localMcc.getCountryCode() : null);
        q qVar = this.binding;
        if (qVar == null || (button = qVar.f66164b) == null) {
            return;
        }
        button.setText(str);
    }

    private final void initView() {
        RecyclerView recyclerView;
        q qVar = this.binding;
        if (qVar == null || (recyclerView = qVar.f66168f) == null) {
            return;
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        a aVar = new a();
        aVar.w1(new p6.d() { // from class: com.transsion.ad.test.ad_config.c
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                TestAdMccActivity.d0(this.f42267a, baseQuickAdapter, view, i11);
            }
        });
        this.nationalInformationAdapter = aVar;
        recyclerView.setAdapter(aVar);
        recyclerView.addItemDecoration(new c());
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_";
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        q qVarC = q.c(getLayoutInflater());
        this.binding = qVarC;
        setContentView(qVarC != null ? qVarC.getRoot() : null);
        initView();
        a0();
        e0();
    }
}

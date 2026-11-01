package com.transsion.ad.test.ad_config;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.p009lifecycle.v;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.o;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.test.TestBaseActivity;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import ji.z;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0002\u0010\u0014B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0006\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/transsion/ad/test/ad_config/TestAdSceneActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "json", "V", "(Ljava/lang/String;)Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "getLogTag", "()Ljava/lang/String;", "Lji/z;", "a", "Lji/z;", "binding", "Lcom/transsion/ad/test/ad_config/TestAdSceneActivity$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/test/ad_config/TestAdSceneActivity$a;", "mAdPlanAdapter", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TestAdSceneActivity extends TestBaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private z binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final a mAdPlanAdapter = new a();

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/ad/test/ad_config/TestAdSceneActivity$a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/ad/test/ad_config/TestAdSceneActivity$b;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ad/test/ad_config/TestAdSceneActivity$b;)V", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class a extends BaseQuickAdapter {
        public a() {
            super(R$layout.test_item_ad_plan_layout, null, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
        public void F(BaseViewHolder holder, b item) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            String json = new GsonBuilder().setPrettyPrinting().create().toJson((JsonElement) item.b());
            if (json == null) {
                json = "";
            }
            holder.setText(R$id.tvConfig, json);
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f42263a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final JsonObject f42264b;

        public b(String id2, JsonObject jsonObject) {
            Intrinsics.h(id2, "id");
            Intrinsics.h(jsonObject, "jsonObject");
            this.f42263a = id2;
            this.f42264b = jsonObject;
        }

        public final String a() {
            return this.f42263a;
        }

        public final JsonObject b() {
            return this.f42264b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f42263a, bVar.f42263a) && Intrinsics.c(this.f42264b, bVar.f42264b);
        }

        public int hashCode() {
            return (this.f42263a.hashCode() * 31) + this.f42264b.hashCode();
        }

        public String toString() {
            return "AdSceneBean(id=" + this.f42263a + ", jsonObject=" + this.f42264b + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String V(String json) {
        Gson gsonCreate = new GsonBuilder().setPrettyPrinting().create();
        try {
            String json2 = gsonCreate.toJson(gsonCreate.fromJson(json, Object.class));
            Intrinsics.g(json2, "toJson(...)");
            return json2;
        } catch (Exception e11) {
            e11.printStackTrace();
            return "Invalid JSON String";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(TestAdSceneActivity testAdSceneActivity, View view) {
        kotlinx.coroutines.k.d(v.a(testAdSceneActivity), null, null, new TestAdSceneActivity$onCreate$1$1(testAdSceneActivity, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean X(TestAdSceneActivity testAdSceneActivity, TextView textView, int i11, KeyEvent keyEvent) {
        CharSequence text;
        if (i11 != 3) {
            return true;
        }
        if (textView == null || (text = textView.getText()) == null) {
            text = "";
        }
        Iterator<Object> it = testAdSceneActivity.mAdPlanAdapter.getData().iterator();
        int i12 = 0;
        while (true) {
            if (!it.hasNext()) {
                i12 = -1;
                break;
            }
            String strA = ((b) it.next()).a();
            Locale locale = Locale.ROOT;
            String upperCase = strA.toUpperCase(locale);
            Intrinsics.g(upperCase, "toUpperCase(...)");
            String upperCase2 = text.toString().toUpperCase(locale);
            Intrinsics.g(upperCase2, "toUpperCase(...)");
            if (StringsKt.c0(upperCase, upperCase2, false, 2, null)) {
                break;
            }
            i12++;
        }
        if (i12 >= 0 && i12 < testAdSceneActivity.mAdPlanAdapter.getItemCount()) {
            z zVar = testAdSceneActivity.binding;
            if (zVar == null) {
                Intrinsics.z("binding");
                zVar = null;
            }
            RecyclerView.m layoutManager = zVar.f66201d.getLayoutManager();
            if (layoutManager != null) {
                layoutManager.scrollToPosition(i12);
            }
        }
        Object systemService = testAdSceneActivity.getSystemService("input_method");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).hideSoftInputFromWindow(textView != null ? textView.getWindowToken() : null, 0);
        return true;
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_";
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        String asString;
        JsonElement jsonElement;
        super.onCreate(savedInstanceState);
        z zVarC = z.c(getLayoutInflater());
        this.binding = zVarC;
        z zVar = null;
        if (zVarC == null) {
            Intrinsics.z("binding");
            zVarC = null;
        }
        setContentView(zVarC.getRoot());
        z zVar2 = this.binding;
        if (zVar2 == null) {
            Intrinsics.z("binding");
            zVar2 = null;
        }
        zVar2.f66199b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_config.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdSceneActivity.W(this.f42273a, view);
            }
        });
        z zVar3 = this.binding;
        if (zVar3 == null) {
            Intrinsics.z("binding");
            zVar3 = null;
        }
        zVar3.f66200c.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.transsion.ad.test.ad_config.k
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i11, KeyEvent keyEvent) {
                return TestAdSceneActivity.X(this.f42274a, textView, i11, keyEvent);
            }
        });
        com.transsion.ad.scene.d dVar = com.transsion.ad.scene.d.f42204a;
        String str = "版本号 " + dVar.d();
        z zVar4 = this.binding;
        if (zVar4 == null) {
            Intrinsics.z("binding");
            zVar4 = null;
        }
        zVar4.f66202e.setText(str);
        z zVar5 = this.binding;
        if (zVar5 == null) {
            Intrinsics.z("binding");
        } else {
            zVar = zVar5;
        }
        RecyclerView recyclerView = zVar.f66201d;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(this.mAdPlanAdapter);
        JsonArray jsonArray = (JsonArray) o.d(dVar.c(), JsonArray.class);
        ArrayList arrayList = new ArrayList();
        if (jsonArray != null) {
            Iterator<JsonElement> it = jsonArray.iterator();
            while (it.hasNext()) {
                JsonObject asJsonObject = it.next().getAsJsonObject();
                if (asJsonObject == null || (jsonElement = asJsonObject.get("id")) == null || (asString = jsonElement.getAsString()) == null) {
                    asString = "";
                }
                Intrinsics.e(asJsonObject);
                arrayList.add(new b(asString, asJsonObject));
            }
        }
        this.mAdPlanAdapter.n1(arrayList);
    }
}

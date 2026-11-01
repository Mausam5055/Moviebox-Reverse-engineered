package com.transsion.web.share;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.baseui.util.q;
import com.transsion.web.R$id;
import com.transsion.web.R$layout;
import com.transsion.web.R$string;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 52\u00020\u0001:\u00036\u001e7B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J-\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00152\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u00020\u001b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR$\u0010#\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010\bR\u0016\u0010%\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\u001fR\u0016\u0010(\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'Rk\u00104\u001aK\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b*\u0012\b\b\u0005\u0012\u0004\b\b(+\u0012\u0015\u0012\u0013\u0018\u00010\u0004¢\u0006\f\b*\u0012\b\b\u0005\u0012\u0004\b\b(,\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b*\u0012\b\b\u0005\u0012\u0004\b\b(-\u0012\u0004\u0012\u00020\u0006\u0018\u00010)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103¨\u00068"}, d2 = {"Lcom/transsion/web/share/WebShareDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "name", "", "s0", "(Ljava/lang/String;)V", "", "isShow", "t0", "(Z)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "c", "Ljava/lang/String;", "getSource", "()Ljava/lang/String;", "setSource", EventConstants.KEY_SOURCE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "dialogName", "e", "Z", "isShowTitle", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "packageName", "backUpPackageName", "txt", "f", "Lkotlin/jvm/functions/Function3;", "getClickCallback", "()Lkotlin/jvm/functions/Function3;", "r0", "(Lkotlin/jvm/functions/Function3;)V", "clickCallback", "g", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Web_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WebShareDialog extends BaseDialog {

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String source;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String dialogName = "web_share_panel";

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isShowTitle = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Function3 clickCallback;

    /* JADX INFO: renamed from: com.transsion.web.share.WebShareDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final WebShareDialog a(String jsonObject) {
            Intrinsics.h(jsonObject, "jsonObject");
            WebShareDialog webShareDialog = new WebShareDialog();
            Bundle bundle = new Bundle();
            bundle.putString("json", jsonObject);
            webShareDialog.setArguments(bundle);
            return webShareDialog;
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/web/share/WebShareDialog$b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/web/share/WebShareDialog$c;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/web/share/WebShareDialog$c;)V", "Web_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class b extends BaseQuickAdapter {
        public b() {
            super(R$layout.item_share, null, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
        public void F(BaseViewHolder holder, c item) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            TextView textView = (TextView) holder.getView(R$id.tv_share);
            textView.setText(item.a());
            textView.setCompoundDrawablesWithIntrinsicBounds(0, item.c(), 0, 0);
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f58105a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f58106b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f58107c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f58108d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f58109e;

        public c(int i11, int i12, String txt, String packageName, String str) {
            Intrinsics.h(txt, "txt");
            Intrinsics.h(packageName, "packageName");
            this.f58105a = i11;
            this.f58106b = i12;
            this.f58107c = txt;
            this.f58108d = packageName;
            this.f58109e = str;
        }

        public /* synthetic */ c(int i11, int i12, String str, String str2, String str3, int i13, DefaultConstructorMarker defaultConstructorMarker) {
            this(i11, i12, str, str2, (i13 & 16) != 0 ? null : str3);
        }

        public final int a() {
            return this.f58106b;
        }

        public final String b() {
            return this.f58109e;
        }

        public final int c() {
            return this.f58105a;
        }

        public final String d() {
            return this.f58108d;
        }

        public final String e() {
            return this.f58107c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f58105a == cVar.f58105a && this.f58106b == cVar.f58106b && Intrinsics.c(this.f58107c, cVar.f58107c) && Intrinsics.c(this.f58108d, cVar.f58108d) && Intrinsics.c(this.f58109e, cVar.f58109e);
        }

        public int hashCode() {
            int iHashCode = ((((((this.f58105a * 31) + this.f58106b) * 31) + this.f58107c.hashCode()) * 31) + this.f58108d.hashCode()) * 31;
            String str = this.f58109e;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "ShareItem(iconRes=" + this.f58105a + ", appNameRes=" + this.f58106b + ", txt=" + this.f58107c + ", packageName=" + this.f58108d + ", backPackageName=" + this.f58109e + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(WebShareDialog webShareDialog, View view) {
        webShareDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(List list, WebShareDialog webShareDialog, b bVar, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        c cVar = (c) list.get(i11);
        Function3 function3 = webShareDialog.clickCallback;
        if (function3 != null) {
            function3.invoke(cVar.d(), cVar.b(), cVar.e());
        }
        HashMap map = new HashMap();
        map.put("module_name", bVar.getContext().getString(cVar.a()));
        String str = webShareDialog.source;
        if (str == null) {
            str = "";
        }
        map.put(EventConstants.KEY_SOURCE, str);
        map.put("dialog_name", webShareDialog.dialogName);
        hj.i.f64505a.p("MbShareDialog", map);
        webShareDialog.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(contextRequireContext);
        Window window = cVar.getWindow();
        if (window != null) {
            window.setGravity(80);
            window.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = com.transsion.baseui.util.a.f43502a.b(contextRequireContext);
            attributes.height = -2;
            window.setBackgroundDrawable(null);
            window.setAttributes(attributes);
        }
        return cVar;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        return inflater.inflate(R$layout.dialog_share, container, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        View viewFindViewById;
        HashMap mapG;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("json") : null;
        if (TextUtils.isEmpty(string)) {
            string = "{}";
        }
        JSONObject jSONObject = new JSONObject(string);
        String strOptString = jSONObject.optString(CampaignEx.JSON_KEY_TITLE);
        this.source = jSONObject.optString("H5Source");
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            String str = this.source;
            if (str == null) {
                str = "";
            }
            mapG.put(EventConstants.KEY_SOURCE, str);
        }
        if (!this.isShowTitle && (viewFindViewById = view.findViewById(R$id.ll_title)) != null) {
            viewFindViewById.setVisibility(8);
        }
        TextView textView = (TextView) view.findViewById(R$id.tv_title);
        if (textView != null) {
            textView.setText(strOptString);
        }
        final ArrayList arrayList = new ArrayList();
        String strOptString2 = jSONObject.optString("WhatsApp");
        Intrinsics.e(strOptString2);
        if (strOptString2.length() > 0) {
            arrayList.add(new c(R$mipmap.player_ic_whatsapp, R$string.whatsapp, strOptString2, "com.whatsapp", null, 16, null));
        }
        String strOptString3 = jSONObject.optString("Telegram");
        Intrinsics.e(strOptString3);
        if (strOptString3.length() > 0) {
            arrayList.add(new c(R$mipmap.player_ic_telegram, R$string.telegram, strOptString3, "org.telegram.messenger", "org.telegram.messenger.web"));
        }
        String strOptString4 = jSONObject.optString("CopyLink");
        Intrinsics.e(strOptString4);
        if (strOptString4.length() > 0) {
            arrayList.add(new c(R$mipmap.player_ic_copy_link, R$string.copy_link, strOptString4, "", null, 16, null));
        }
        View viewFindViewById2 = view.findViewById(R$id.ll_title);
        if (viewFindViewById2 != null) {
            q.c(viewFindViewById2, com.blankj.utilcode.util.i.e(6.0f));
        }
        View viewFindViewById3 = view.findViewById(R$id.iv_close);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.web.share.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    WebShareDialog.p0(this.f58118a, view2);
                }
            });
        }
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R$id.share_list);
        if (recyclerView != null) {
            recyclerView.addItemDecoration(new ig.d(a0.a(16.0f)));
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
            final b bVar = new b();
            bVar.q1(arrayList);
            bVar.w1(new p6.d() { // from class: com.transsion.web.share.f
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i11) {
                    WebShareDialog.q0(arrayList, this, bVar, baseQuickAdapter, view2, i11);
                }
            });
            recyclerView.setAdapter(bVar);
        }
        HashMap map = new HashMap();
        map.put("dialog_name", this.dialogName);
        hj.i.f64505a.r("MbShareDialog", map);
    }

    public final void r0(Function3 function3) {
        this.clickCallback = function3;
    }

    public final void s0(String name) {
        Intrinsics.h(name, "name");
        this.dialogName = name;
    }

    public final void t0(boolean isShow) {
        this.isShowTitle = isShow;
    }
}

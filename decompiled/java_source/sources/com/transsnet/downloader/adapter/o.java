package com.transsnet.downloader.adapter;

import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class o extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f58519e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f58520f;

    public o(boolean z10) {
        this.f58519e = z10;
        String string = Utils.a().getString(R$string.available);
        Intrinsics.g(string, "getString(...)");
        this.f58520f = string;
    }

    private final void A(BaseViewHolder baseViewHolder, boolean z10) {
        ((ImageView) baseViewHolder.getView(R$id.iv_album_check)).setSelected(z10);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 2;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return this.f58519e ? R$layout.item_download_res_path_phone_storage_album_save : R$layout.item_download_res_path_phone_storage_album;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, my.b item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (this.f58519e) {
            int color = Utils.a().getResources().getColor(item.a() <= 0 ? R$color.error_50 : R$color.text_02);
            TextView textView = (TextView) helper.getView(R$id.tv_phone_storage_available_size);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(item.a() <= 0 ? "0Mb" : oh.b.a(item.a(), 2));
            sb2.append(" ");
            sb2.append(this.f58520f);
            textView.setText(sb2.toString());
            textView.setTextColor(color);
        }
        A(helper, item.f());
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void f(BaseViewHolder helper, my.b item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object obj = payloads.get(payloads.size() - 1);
        if (obj instanceof Boolean) {
            A(helper, ((Boolean) obj).booleanValue());
        }
    }
}

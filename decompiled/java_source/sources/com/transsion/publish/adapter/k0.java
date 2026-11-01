package com.transsion.publish.adapter;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.transsion.baseui.R$mipmap;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$layout;
import com.transsion.publish.R$string;
import com.transsion.publish.api.VsMediaInfo;
import com.transsion.publish.ui.VideoPreviewActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes6.dex */
public final class k0 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f50392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f50393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private FrameLayout.LayoutParams f50394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List f50395d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f50396e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f50397f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f50398g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f50399h;

    public k0(Function1 selectItem) {
        Intrinsics.h(selectItem, "selectItem");
        this.f50392a = selectItem;
        this.f50393b = new ArrayList();
        this.f50395d = new ArrayList();
        this.f50396e = 1;
        this.f50397f = 52428800;
        this.f50398g = 1200000;
        this.f50399h = AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;
        int iB = (com.blankj.utilcode.util.y.b() - (com.blankj.utilcode.util.a0.a(3.0f) * 5)) / 4;
        this.f50394c = new FrameLayout.LayoutParams(iB, iB);
    }

    private final void k(m0 m0Var, Function0 function0) {
        if (!n() || m0Var.g().getVisibility() != 0) {
            function0.invoke();
            return;
        }
        String string = Utils.a().getString(R$string.add_video_max_tips);
        Intrinsics.g(string, "getString(...)");
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String str = String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(this.f50396e)}, 1));
        Intrinsics.g(str, "format(...)");
        com.tn.lib.widget.toast.core.h.f41479a.l(str);
    }

    private final String l(VsMediaInfo vsMediaInfo) {
        int i11 = 0;
        for (Object obj : this.f50395d) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            if (Intrinsics.c(vsMediaInfo.getVideoPath(), ((VsMediaInfo) obj).getVideoPath())) {
                return String.valueOf(i12);
            }
            i11 = i12;
        }
        return TmcConstants.COLD_OPEN_TYPE;
    }

    private final boolean n() {
        return this.f50395d.size() >= this.f50396e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q(boolean z10, boolean z11, boolean z12, k0 k0Var, final m0 m0Var, final VsMediaInfo vsMediaInfo, View it) {
        Intrinsics.h(it, "it");
        if (z10) {
            uh.b.f76753a.e("Exceeded video length, 20 mins Max");
            return Unit.f67061a;
        }
        if (z11) {
            uh.b.f76753a.e(Utils.a().getResources().getString(R$string.add_media_max_size_tips, 50));
            return Unit.f67061a;
        }
        if (z12) {
            uh.b.f76753a.e("video requires at least 3s");
            return Unit.f67061a;
        }
        k0Var.k(m0Var, new Function0() { // from class: com.transsion.publish.adapter.j0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return k0.r(m0Var, vsMediaInfo);
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r(m0 m0Var, VsMediaInfo vsMediaInfo) {
        VideoPreviewActivity.Companion companion = VideoPreviewActivity.INSTANCE;
        Context context = m0Var.itemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        companion.a(context, vsMediaInfo, 2);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s(boolean z10, boolean z11, boolean z12, final k0 k0Var, m0 m0Var, final VsMediaInfo vsMediaInfo, View it) {
        Intrinsics.h(it, "it");
        if (z10) {
            uh.b.f76753a.e("Exceeded video length, 20 mins Max");
            return Unit.f67061a;
        }
        if (z11) {
            uh.b.f76753a.e(Utils.a().getResources().getString(R$string.add_media_max_size_tips, 50));
            return Unit.f67061a;
        }
        if (z12) {
            uh.b.f76753a.e("video requires at least 3s");
            return Unit.f67061a;
        }
        k0Var.k(m0Var, new Function0() { // from class: com.transsion.publish.adapter.i0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return k0.t(vsMediaInfo, k0Var);
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t(VsMediaInfo vsMediaInfo, k0 k0Var) {
        if (vsMediaInfo.getEnableSelect()) {
            k0Var.z(vsMediaInfo);
        } else {
            k0Var.y(vsMediaInfo);
        }
        return Unit.f67061a;
    }

    private final void v(TextView textView, long j11) {
        if (j11 == 0) {
            return;
        }
        if (2001 <= j11 && j11 < 3000) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format("%02d:%02d", Arrays.copyOf(new Object[]{0, 2}, 2));
            Intrinsics.g(str, "format(...)");
            String str2 = String.format(str, Arrays.copyOf(new Object[0], 0));
            Intrinsics.g(str2, "format(...)");
            textView.setText(str2);
            return;
        }
        if (4001 <= j11 && j11 < 5000) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f67289a;
            String str3 = String.format("%02d:%02d", Arrays.copyOf(new Object[]{0, 4}, 2));
            Intrinsics.g(str3, "format(...)");
            String str4 = String.format(str3, Arrays.copyOf(new Object[0], 0));
            Intrinsics.g(str4, "format(...)");
            textView.setText(str4);
            return;
        }
        int iD = MathKt.d(j11 / 1000);
        StringCompanionObject stringCompanionObject3 = StringCompanionObject.f67289a;
        String str5 = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(iD / 60), Integer.valueOf(iD % 60)}, 2));
        Intrinsics.g(str5, "format(...)");
        String str6 = String.format(str5, Arrays.copyOf(new Object[0], 0));
        Intrinsics.g(str6, "format(...)");
        textView.setText(str6);
    }

    private final void w(VsMediaInfo vsMediaInfo) {
        VsMediaInfo vsMediaInfo2 = null;
        for (VsMediaInfo vsMediaInfo3 : this.f50395d) {
            if (TextUtils.equals(vsMediaInfo3.getVideoPath(), vsMediaInfo.getVideoPath())) {
                vsMediaInfo2 = vsMediaInfo3;
            }
        }
        if (this.f50395d.contains(vsMediaInfo)) {
            this.f50395d.remove(vsMediaInfo);
        }
        if (vsMediaInfo2 != null) {
            this.f50395d.remove(vsMediaInfo2);
        }
    }

    private final void y(VsMediaInfo vsMediaInfo) {
        w(vsMediaInfo);
        this.f50395d.add(vsMediaInfo);
        this.f50392a.invoke(Integer.valueOf(this.f50395d.size()));
        vsMediaInfo.setEnableSelect(true);
        int iIndexOf = this.f50393b.indexOf(vsMediaInfo);
        if (iIndexOf >= 0) {
            notifyItemChanged(iIndexOf, Boolean.TRUE);
        }
        if (n()) {
            notifyDataSetChanged();
        }
    }

    private final void z(VsMediaInfo vsMediaInfo) {
        boolean zN = n();
        w(vsMediaInfo);
        this.f50392a.invoke(Integer.valueOf(this.f50395d.size()));
        vsMediaInfo.setEnableSelect(false);
        int iIndexOf = this.f50393b.indexOf(vsMediaInfo);
        if (iIndexOf >= 0) {
            notifyItemChanged(iIndexOf, Boolean.FALSE);
        }
        if (zN) {
            notifyDataSetChanged();
        }
    }

    public final void addData(List data) {
        Intrinsics.h(data, "data");
        int size = this.f50393b.size();
        this.f50393b.addAll(data);
        notifyItemRangeInserted(size, data.size());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f50393b.size();
    }

    public final List m() {
        return this.f50395d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(final m0 holder, int i11) {
        Intrinsics.h(holder, "holder");
        final VsMediaInfo vsMediaInfo = (VsMediaInfo) this.f50393b.get(i11);
        holder.itemView.setLayoutParams(this.f50394c);
        v(holder.i(), vsMediaInfo.getVideoDuration());
        if (TextUtils.isEmpty(vsMediaInfo.getImagePath())) {
            String videoPath = vsMediaInfo.getVideoPath();
            File file = videoPath != null ? new File(videoPath) : null;
            if (file != null) {
                ej.f.a aVar = ej.f.f61882a;
                Context context = holder.f().getContext();
                Intrinsics.g(context, "getContext(...)");
                aVar.m(context).g(Uri.fromFile(file).toString()).i(R$mipmap.home_ic_default_res).d(holder.f());
            }
        } else {
            ej.f.a aVar2 = ej.f.f61882a;
            Context context2 = holder.f().getContext();
            Intrinsics.g(context2, "getContext(...)");
            aVar2.m(context2).g(vsMediaInfo.getImagePath()).i(R$mipmap.home_ic_default_res).d(holder.f());
        }
        boolean z10 = vsMediaInfo.getVideoSize() >= ((long) this.f50397f);
        boolean z11 = vsMediaInfo.getVideoDuration() >= ((long) this.f50398g);
        boolean z12 = vsMediaInfo.getVideoDuration() < ((long) this.f50399h);
        if (!n()) {
            holder.g().setVisibility(8);
            if (vsMediaInfo.getEnableSelect()) {
                holder.j().setText(l(vsMediaInfo));
                holder.j().setBackgroundResource(R$drawable.bg_linear_r16);
            } else {
                holder.j().setText("");
                holder.j().setBackgroundResource(R$drawable.ic_select_number_bro);
            }
        } else if (vsMediaInfo.getEnableSelect()) {
            holder.g().setVisibility(8);
            holder.j().setText(l(vsMediaInfo));
            holder.j().setBackgroundResource(R$drawable.bg_linear_r16);
        } else {
            holder.g().setVisibility(0);
            holder.j().setText("");
            holder.j().setBackgroundResource(R$drawable.ic_select_number_bro);
        }
        if (z10 || z11 || z12) {
            holder.g().setVisibility(0);
        }
        View itemView = holder.itemView;
        Intrinsics.g(itemView, "itemView");
        final boolean z13 = z11;
        final boolean z14 = z10;
        final boolean z15 = z12;
        jg.c.c(itemView, 0L, new Function1() { // from class: com.transsion.publish.adapter.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return k0.q(z13, z14, z15, this, holder, vsMediaInfo, (View) obj);
            }
        }, 1, null);
        jg.c.c(holder.h(), 0L, new Function1() { // from class: com.transsion.publish.adapter.h0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return k0.s(z13, z14, z15, this, holder, vsMediaInfo, (View) obj);
            }
        }, 1, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(m0 holder, int i11, List payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
        if (!(CollectionsKt.k0(payloads) instanceof Boolean)) {
            super.onBindViewHolder(holder, i11, payloads);
            return;
        }
        VsMediaInfo vsMediaInfo = (VsMediaInfo) this.f50393b.get(i11);
        if (vsMediaInfo.getEnableSelect()) {
            holder.j().setText(l(vsMediaInfo));
            holder.j().setBackgroundResource(R$drawable.bg_linear_r16);
        } else {
            holder.j().setText("");
            holder.j().setBackgroundResource(R$drawable.ic_select_number_bro);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public m0 onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.upload_select_video_item, (ViewGroup) null);
        Intrinsics.e(viewInflate);
        return new m0(viewInflate);
    }

    public final void x(VsMediaInfo data) {
        Intrinsics.h(data, "data");
        VsMediaInfo vsMediaInfo = data;
        for (VsMediaInfo vsMediaInfo2 : this.f50393b) {
            if (TextUtils.equals(vsMediaInfo2.getVideoPath(), data.getVideoPath())) {
                vsMediaInfo2.setEnableSelect(data.getEnableSelect());
                vsMediaInfo = vsMediaInfo2;
            }
        }
        if (data.getEnableSelect()) {
            y(vsMediaInfo);
        } else {
            z(vsMediaInfo);
        }
        notifyItemRangeChanged(0, this.f50393b.size(), Boolean.TRUE);
    }
}

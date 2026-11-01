package com.transsion.publish.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.pslink.AppInstalledBean;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$layout;
import com.transsion.publish.R$string;
import com.transsion.publish.api.AudioEntity;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b0 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FrameLayout.LayoutParams f50322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private x f50323c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AudioEntity f50325e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f50321a = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f50324d = (com.blankj.utilcode.util.y.b() - (com.blankj.utilcode.util.a0.a(3.0f) * 5)) / 4;

    public b0() {
        int i11 = this.f50324d;
        this.f50322b = new FrameLayout.LayoutParams(i11, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(b0 b0Var, AudioEntity audioEntity, View view) {
        if (b0Var.k(audioEntity.getSize())) {
            uh.b.f76753a.e(Utils.a().getResources().getString(R$string.add_media_max_size_tips, 50));
            return;
        }
        if (audioEntity.getEnableSelect()) {
            Iterator it = b0Var.f50321a.iterator();
            while (it.hasNext()) {
                ((AudioEntity) it.next()).setEnableSelect(false);
            }
            audioEntity.setPlay(false);
            b0Var.f50325e = null;
            b0Var.notifyDataSetChanged();
            return;
        }
        Iterator it2 = b0Var.f50321a.iterator();
        while (it2.hasNext()) {
            ((AudioEntity) it2.next()).setEnableSelect(false);
        }
        audioEntity.setPlay(true);
        audioEntity.setEnableSelect(true);
        b0Var.f50325e = audioEntity;
        x xVar = b0Var.f50323c;
        if (xVar != null) {
            xVar.a(audioEntity);
        }
        b0Var.notifyDataSetChanged();
    }

    public final void addData(List data) {
        Intrinsics.h(data, "data");
        int size = this.f50321a.size();
        this.f50321a.addAll(data);
        notifyItemRangeInserted(size, data.size());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f50321a.size();
    }

    public final List h() {
        return this.f50321a;
    }

    public final AudioEntity i() {
        return this.f50325e;
    }

    public final String j(long j11) {
        BigDecimal bigDecimal = new BigDecimal(String.valueOf(j11));
        BigDecimal bigDecimal2 = new BigDecimal("1024");
        double dDoubleValue = bigDecimal.divide(bigDecimal2, 1, 1).doubleValue();
        if (dDoubleValue < 1024.0d) {
            return dDoubleValue + "KB";
        }
        String string = new BigDecimal(dDoubleValue).divide(bigDecimal2, 1, 1).toString();
        Intrinsics.g(string, "toString(...)");
        return string + AppInstalledBean.APP_INSTALLED_BEAN_SOURCE_MB;
    }

    public final boolean k(long j11) {
        long j12 = 1024;
        long j13 = j11 / j12;
        return j13 >= 1024 && j13 / j12 >= 50;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(c0 holder, int i11) {
        Intrinsics.h(holder, "holder");
        final AudioEntity audioEntity = (AudioEntity) this.f50321a.get(i11);
        holder.i().setText(audioEntity.getImageTitle());
        TextView textViewG = holder.g();
        String strJ = j(audioEntity.getSize());
        Long duration = audioEntity.getDuration();
        textViewG.setText(strJ + " " + TimeUtilKt.o((duration != null ? duration.longValue() : 0L) / ((long) 1000)));
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.adapter.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b0.m(this.f50315a, audioEntity, view);
            }
        });
        if (audioEntity.getEnableSelect()) {
            holder.h().setVisibility(0);
        } else {
            holder.h().setVisibility(8);
        }
        if (audioEntity.getPlay()) {
            holder.f().setImageResource(R$drawable.ic_audio_pause);
        } else {
            holder.f().setImageResource(R$drawable.ic_audio_play);
        }
        if (!k(audioEntity.getSize())) {
            holder.j().setVisibility(8);
        } else {
            holder.j().getBackground().mutate().setAlpha(178);
            holder.j().setVisibility(0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public c0 onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_select_music, parent, false);
        Intrinsics.e(viewInflate);
        return new c0(viewInflate);
    }

    public final void o() {
        List<AudioEntity> list = this.f50321a;
        if (list != null) {
            for (AudioEntity audioEntity : list) {
                if (audioEntity.getPlay()) {
                    audioEntity.setPlay(false);
                }
            }
        }
        notifyDataSetChanged();
    }

    public final void p(x selectItemClickListener) {
        Intrinsics.h(selectItemClickListener, "selectItemClickListener");
        this.f50323c = selectItemClickListener;
    }
}

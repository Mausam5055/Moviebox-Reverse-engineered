package com.transsion.publish.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$layout;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.ui.GalleryActivity;
import com.transsion.publish.ui.SelectImageActivity;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f50363e = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FrameLayout.LayoutParams f50365b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f50367d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f50364a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f50366c = (com.blankj.utilcode.util.y.b() - (com.blankj.utilcode.util.a0.a(3.0f) * 5)) / 4;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public g() {
        int i11 = this.f50366c;
        this.f50365b = new FrameLayout.LayoutParams(i11, i11);
    }

    private final void j(final c cVar, PhotoEntity photoEntity) {
        if (getItemCount() == 0) {
            TextView textViewI = cVar.i();
            if (textViewI != null) {
                textViewI.setText("0/9");
            }
        } else {
            List list = this.f50364a;
            boolean z10 = false;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (((PhotoEntity) it.next()).getIsAdd()) {
                        z10 = true;
                    }
                }
            }
            if (z10) {
                TextView textViewI2 = cVar.i();
                if (textViewI2 != null) {
                    textViewI2.setText((getItemCount() - 1) + "/9");
                }
            } else {
                TextView textViewI3 = cVar.i();
                if (textViewI3 != null) {
                    textViewI3.setText(getItemCount() + "/9");
                }
            }
        }
        View viewF = cVar.f();
        if (viewF != null) {
            viewF.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.adapter.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.k(cVar, this, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(c cVar, g gVar, View view) {
        Context context;
        View viewF = cVar.f();
        if (viewF == null || (context = viewF.getContext()) == null) {
            return;
        }
        SelectImageActivity.INSTANCE.a(context, 0, 9 - gVar.l().size(), new ArrayList());
    }

    private final void o(final c cVar, final PhotoEntity photoEntity, final int i11) {
        ImageView imageViewH = cVar.h();
        if (imageViewH != null) {
            Glide.with(cVar.itemView.getContext()).load2(photoEntity.getLocalPath()).placeholder(R$drawable.upload_error_cover).into(imageViewH);
        }
        cVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.adapter.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g.p(this.f50336a, cVar, i11, view);
            }
        });
        View viewG = cVar.g();
        if (viewG != null) {
            viewG.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.adapter.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.q(this.f50343a, photoEntity, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(g gVar, c cVar, int i11, View view) {
        List listL = gVar.l();
        com.transsion.publish.n.f50455b.a().f(listL);
        GalleryActivity.Companion companion = GalleryActivity.INSTANCE;
        Context context = cVar.itemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        companion.a(context, listL, i11, 2, 9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(g gVar, PhotoEntity photoEntity, View view) {
        if (gVar.f50367d) {
            return;
        }
        gVar.f50367d = false;
        gVar.t(photoEntity);
        gVar.f50367d = false;
    }

    private final void t(PhotoEntity photoEntity) {
        this.f50364a.remove(photoEntity);
        fp.a aVar = new fp.a();
        boolean z10 = false;
        aVar.o(0);
        aVar.n(2);
        if (this.f50364a.size() == 0 || (this.f50364a.size() == 1 && ((PhotoEntity) this.f50364a.get(0)).getIsAdd())) {
            List list = this.f50364a;
            if (list != null) {
                list.clear();
            }
            notifyDataSetChanged();
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = fp.a.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, aVar, 0L);
            return;
        }
        if (this.f50364a.size() == 8) {
            Iterator it = this.f50364a.iterator();
            while (it.hasNext()) {
                if (((PhotoEntity) it.next()).getIsAdd()) {
                    z10 = true;
                }
            }
            if (!z10) {
                PhotoEntity photoEntity2 = new PhotoEntity();
                photoEntity2.setAdd(true);
                this.f50364a.add(photoEntity2);
            }
        }
        FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = fp.a.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.postEvent(name2, aVar, 0L);
        notifyDataSetChanged();
    }

    public final void addData(List data) {
        Intrinsics.h(data, "data");
        int size = this.f50364a.size();
        this.f50364a.addAll(data);
        notifyItemRangeInserted(size, data.size());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f50364a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i11) {
        return ((PhotoEntity) this.f50364a.get(i11)).getIsAdd() ? 2 : 1;
    }

    public final List l() {
        ArrayList arrayList = new ArrayList();
        for (PhotoEntity photoEntity : this.f50364a) {
            if (!photoEntity.getIsAdd()) {
                arrayList.add(photoEntity);
            }
        }
        return arrayList;
    }

    public final List m() {
        return this.f50364a;
    }

    public final boolean n() {
        List list = this.f50364a;
        return list != null && list.isEmpty();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(c holder, int i11) {
        Intrinsics.h(holder, "holder");
        PhotoEntity photoEntity = (PhotoEntity) this.f50364a.get(i11);
        if (photoEntity.getIsAdd()) {
            j(holder, photoEntity);
        } else {
            o(holder, photoEntity, i11);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public c onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        if (i11 != 1) {
            return i11 != 2 ? new c(null) : new c(LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_add_image, (ViewGroup) null));
        }
        return new c(LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_image, (ViewGroup) null));
    }

    public final void setData(List data) {
        Intrinsics.h(data, "data");
        this.f50364a.clear();
        this.f50364a.addAll(data);
        notifyDataSetChanged();
    }

    public final void u() {
        List list = this.f50364a;
        if (list != null) {
            list.clear();
        }
        notifyDataSetChanged();
    }
}

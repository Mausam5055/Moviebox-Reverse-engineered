package com.transsion.shorttv_pugc.ui.adapter.provider;

import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.bean.AppointSubject;
import com.transsion.shorttv_pugc.bean.OperateItem;
import com.transsion.shorttv_pugc.bean.ShortTvItemType;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f54066e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final SimpleDateFormat f54067f;

    public f(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.f54066e = pageName;
        this.f54067f = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(f fVar, OperateItem operateItem) {
        List<Object> data;
        BaseProviderMultiAdapter baseProviderMultiAdapterG = fVar.g();
        if (baseProviderMultiAdapterG != null && (data = baseProviderMultiAdapterG.getData()) != null) {
            data.remove(operateItem);
        }
        BaseProviderMultiAdapter baseProviderMultiAdapterG2 = fVar.g();
        if (baseProviderMultiAdapterG2 != null) {
            baseProviderMultiAdapterG2.notifyDataSetChanged();
        }
    }

    private final List B(List list) {
        Date date = new Date();
        ArrayList arrayList = new ArrayList();
        try {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AppointSubject appointSubject = (AppointSubject) it.next();
                SimpleDateFormat simpleDateFormat = this.f54067f;
                String appointmentDate = appointSubject.getAppointmentDate();
                if (appointmentDate == null) {
                    appointmentDate = "";
                }
                Date date2 = simpleDateFormat.parse(appointmentDate);
                if (date2 != null && date2.after(date)) {
                    arrayList.add(appointSubject);
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return arrayList;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return ShortTvItemType.APPOINTMENT_LIST.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.pugc_short_tv_op_appointment;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ((TextView) helper.getView(R$id.sub_operation_appointment_title)).setText(item.getTitle());
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.sub_operation_appointment_recycle);
        com.transsion.shorttv_pugc.ui.adapter.n nVar = new com.transsion.shorttv_pugc.ui.adapter.n(0, this.f54066e, 1, null);
        recyclerView.setAdapter(nVar);
        recyclerView.setLayoutManager(new LinearLayoutManager(k(), 0, false));
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new com.transsion.shorttv_pugc.base.widget.k(8.0f, 0.0f, 12.0f, 2, null));
        }
        List<AppointSubject> subjects = item.getSubjects();
        if (subjects == null) {
            subjects = new ArrayList<>();
        }
        List listB = B(subjects);
        nVar.n1(listB);
        if (listB.isEmpty()) {
            helper.itemView.post(new Runnable() { // from class: com.transsion.shorttv_pugc.ui.adapter.provider.e
                @Override // java.lang.Runnable
                public final void run() {
                    f.A(this.f54064a, item);
                }
            });
        }
    }
}

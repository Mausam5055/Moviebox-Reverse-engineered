package com.transsion.shorttv.ui.adapter.provider;

import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.bean.AppointSubject;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.ShortTvItemType;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class i extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f53181e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final SimpleDateFormat f53182f;

    public i(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.f53181e = pageName;
        this.f53182f = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(i iVar, OperateItem operateItem) {
        List<Object> data;
        BaseProviderMultiAdapter baseProviderMultiAdapterG = iVar.g();
        if (baseProviderMultiAdapterG != null && (data = baseProviderMultiAdapterG.getData()) != null) {
            data.remove(operateItem);
        }
        BaseProviderMultiAdapter baseProviderMultiAdapterG2 = iVar.g();
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
                SimpleDateFormat simpleDateFormat = this.f53182f;
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
        return R$layout.short_tv_op_appointment;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ((TextView) helper.getView(R$id.sub_operation_appointment_title)).setText(item.getTitle());
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.sub_operation_appointment_recycle);
        com.transsion.shorttv.ui.adapter.q qVar = new com.transsion.shorttv.ui.adapter.q(0, this.f53181e, 1, null);
        recyclerView.setAdapter(qVar);
        recyclerView.setLayoutManager(new LinearLayoutManager(k(), 0, false));
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new com.transsion.shorttv.base.widget.m(8.0f, 0.0f, 12.0f, 2, null));
        }
        List<AppointSubject> subjects = item.getSubjects();
        if (subjects == null) {
            subjects = new ArrayList<>();
        }
        List listB = B(subjects);
        qVar.n1(listB);
        if (listB.isEmpty()) {
            helper.itemView.post(new Runnable() { // from class: com.transsion.shorttv.ui.adapter.provider.h
                @Override // java.lang.Runnable
                public final void run() {
                    i.A(this.f53179a, item);
                }
            });
        }
    }
}

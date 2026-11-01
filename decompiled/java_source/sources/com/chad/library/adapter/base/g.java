package com.chad.library.adapter.base;

import androidx.recyclerview.widget.DiffUtil;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\nJ/\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011JC\u0010\u0017\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u0012\u001a\u00020\u000e2\b\b\u0002\u0010\u0013\u001a\u00020\u000e2\b\b\u0002\u0010\u0014\u001a\u00020\u000e2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018JC\u0010\u001a\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u0019\u001a\u00020\u000e2\b\b\u0002\u0010\u0013\u001a\u00020\u000e2\b\b\u0002\u0010\u0014\u001a\u00020\u000e2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u001a\u0010\u0018J\u0015\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010 \u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b \u0010\u001fJ\u0015\u0010!\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b!\u0010\u001fJ\u001d\u0010#\u001a\u00020\u001d2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00020\"H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u0007H\u0014¢\u0006\u0004\b&\u0010'J\u001f\u0010(\u001a\u00020\u001d2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0003H\u0016¢\u0006\u0004\b(\u0010\u0006J\u001f\u0010)\u001a\u00020\u001d2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\fH\u0016¢\u0006\u0004\b)\u0010*J\u001f\u0010,\u001a\u00020\u001d2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0002H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020\u0002H\u0016¢\u0006\u0004\b.\u0010/J%\u00101\u001a\u00020\u001d2\u0006\u0010\b\u001a\u00020\u00072\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u00020\fH\u0016¢\u0006\u0004\b1\u00102J\u001d\u00103\u001a\u00020\u001d2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u00020\fH\u0016¢\u0006\u0004\b3\u0010*J\u0017\u00104\u001a\u00020\u001d2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b4\u00105J\u001f\u00107\u001a\u00020\u001d2\u0006\u00106\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0002H\u0016¢\u0006\u0004\b7\u0010-J)\u0010:\u001a\u00020\u001d2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00032\b\u00109\u001a\u0004\u0018\u000108H\u0016¢\u0006\u0004\b:\u0010;J%\u0010>\u001a\u00020\u001d2\u0006\u0010=\u001a\u00020<2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016¢\u0006\u0004\b>\u0010?J\u001d\u0010A\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020\u00022\u0006\u0010+\u001a\u00020\u0002¢\u0006\u0004\bA\u0010BJ%\u0010D\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0002¢\u0006\u0004\bD\u0010EJ+\u0010F\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u00072\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u00020\f¢\u0006\u0004\bF\u0010GJ\u001d\u0010H\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u0007¢\u0006\u0004\bH\u0010IJ\u001d\u0010K\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020\u00022\u0006\u0010J\u001a\u00020\u0002¢\u0006\u0004\bK\u0010BJ%\u0010L\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0002¢\u0006\u0004\bL\u0010EJ#\u0010M\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020\u00022\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u00020\f¢\u0006\u0004\bM\u0010NJ9\u0010O\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u0013\u001a\u00020\u000e2\b\b\u0002\u0010\u0014\u001a\u00020\u000e2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0004\bO\u0010PJ9\u0010Q\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u0013\u001a\u00020\u000e2\b\b\u0002\u0010\u0014\u001a\u00020\u000e2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0004\bQ\u0010PJ9\u0010R\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u0013\u001a\u00020\u000e2\b\b\u0002\u0010\u0014\u001a\u00020\u000e2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0004\bR\u0010PJ9\u0010S\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u0013\u001a\u00020\u000e2\b\b\u0002\u0010\u0014\u001a\u00020\u000e2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0004\bS\u0010PJ9\u0010T\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u0013\u001a\u00020\u000e2\b\b\u0002\u0010\u0014\u001a\u00020\u000e2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0004\bT\u0010PJY\u0010Y\u001a\u00020\u001d2\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010U\u001a\u00020\u000e2\b\b\u0002\u0010V\u001a\u00020\u000e2\b\b\u0002\u0010\u0013\u001a\u00020\u000e2\b\b\u0002\u0010\u0014\u001a\u00020\u000e2\n\b\u0002\u0010W\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010X\u001a\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0004\bY\u0010ZJ\u0015\u0010\\\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u0002¢\u0006\u0004\b\\\u0010]J\u0017\u0010^\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b^\u0010\nR$\u0010c\u001a\u0012\u0012\u0004\u0012\u00020\u00070_j\b\u0012\u0004\u0012\u00020\u0007``8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\ba\u0010b¨\u0006d"}, d2 = {"Lcom/chad/library/adapter/base/g;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lo6/b;", "", "nodeList", "<init>", "(Ljava/util/List;)V", "", RequestParameters.POSITION, "S2", "(I)I", "R2", "", "list", "", "isExpanded", "I2", "(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;", "isChangeChildCollapse", "animate", "notify", "", "parentPayload", "Z1", "(IZZZLjava/lang/Object;)I", "isChangeChildExpand", "l2", "Lcom/chad/library/adapter/base/provider/a;", "provider", "", "U1", "(Lcom/chad/library/adapter/base/provider/a;)V", "T1", "S1", "Lcom/chad/library/adapter/base/provider/BaseItemProvider;", "F1", "(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V", NativeComponentConstants.KEY_COMPONENT_TYPE, "u0", "(I)Z", "q1", "n1", "(Ljava/util/Collection;)V", "data", "Q1", "(ILo6/b;)V", "R1", "(Lo6/b;)V", "newData", "o", "(ILjava/util/Collection;)V", CampaignEx.JSON_KEY_AD_Q, "G0", "(I)V", "index", "T2", "Ljava/lang/Runnable;", "commitCallback", "V0", "(Ljava/util/List;Ljava/lang/Runnable;)V", "Landroidx/recyclerview/widget/DiffUtil$d;", "diffResult", "T0", "(Landroidx/recyclerview/widget/DiffUtil$d;Ljava/util/List;)V", "parentNode", "M2", "(Lo6/b;Lo6/b;)V", "childIndex", "L2", "(Lo6/b;ILo6/b;)V", "K2", "(Lo6/b;ILjava/util/Collection;)V", "N2", "(Lo6/b;I)V", "childNode", "O2", "Q2", "P2", "(Lo6/b;Ljava/util/Collection;)V", "Y1", "(IZZLjava/lang/Object;)I", "k2", "E2", "r2", "f2", "isExpandedChild", "isCollapseChild", "expandPayload", "collapsePayload", "z2", "(IZZZZLjava/lang/Object;Ljava/lang/Object;)V", "node", "H2", "(Lo6/b;)I", "G2", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "G", "Ljava/util/HashSet;", "fullSpanNodeTypeSet", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class g extends BaseProviderMultiAdapter<o6.b> {

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final HashSet<Integer> fullSpanNodeTypeSet;

    /* JADX WARN: Multi-variable type inference failed */
    public g() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public g(List<o6.b> list) {
        super(null);
        this.fullSpanNodeTypeSet = new HashSet<>();
        List<o6.b> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        getData().addAll(J2(this, list2, null, 2, null));
    }

    public /* synthetic */ g(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list);
    }

    public static /* synthetic */ void A2(g gVar, int i11, boolean z10, boolean z11, boolean z12, boolean z13, Object obj, Object obj2, int i12, Object obj3) {
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandAndCollapseOther");
        }
        gVar.z2(i11, (i12 & 2) != 0 ? false : z10, (i12 & 4) != 0 ? true : z11, (i12 & 8) != 0 ? true : z12, (i12 & 16) == 0 ? z13 : true, (i12 & 32) != 0 ? null : obj, (i12 & 64) == 0 ? obj2 : null);
    }

    public static /* synthetic */ int F2(g gVar, int i11, boolean z10, boolean z11, Object obj, int i12, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandOrCollapse");
        }
        if ((i12 & 2) != 0) {
            z10 = true;
        }
        if ((i12 & 4) != 0) {
            z11 = true;
        }
        if ((i12 & 8) != 0) {
            obj = null;
        }
        return gVar.E2(i11, z10, z11, obj);
    }

    private final List<o6.b> I2(Collection<? extends o6.b> list, Boolean isExpanded) {
        List listA;
        ArrayList arrayList = new ArrayList();
        for (o6.b bVar : list) {
            arrayList.add(bVar);
            if (bVar instanceof o6.a) {
                if ((Intrinsics.c(isExpanded, Boolean.TRUE) || ((o6.a) bVar).b()) && (listA = bVar.a()) != null && !listA.isEmpty()) {
                    arrayList.addAll(I2(listA, isExpanded));
                }
                if (isExpanded != null) {
                    ((o6.a) bVar).c(isExpanded.booleanValue());
                }
            } else {
                List listA2 = bVar.a();
                if (listA2 != null && !listA2.isEmpty()) {
                    arrayList.addAll(I2(listA2, isExpanded));
                }
            }
        }
        return arrayList;
    }

    static /* synthetic */ List J2(g gVar, Collection collection, Boolean bool, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: flatData");
        }
        if ((i11 & 2) != 0) {
            bool = null;
        }
        return gVar.I2(collection, bool);
    }

    private final int R2(int position) {
        o6.b bVar;
        List listA;
        if (position >= getData().size() || (listA = (bVar = (o6.b) getData().get(position)).a()) == null || listA.isEmpty()) {
            return 0;
        }
        if (!(bVar instanceof o6.a)) {
            List listA2 = bVar.a();
            Intrinsics.e(listA2);
            List listJ2 = J2(this, listA2, null, 2, null);
            getData().removeAll(listJ2);
            return listJ2.size();
        }
        if (!((o6.a) bVar).b()) {
            return 0;
        }
        List listA3 = bVar.a();
        Intrinsics.e(listA3);
        List listJ3 = J2(this, listA3, null, 2, null);
        getData().removeAll(listJ3);
        return listJ3.size();
    }

    private final int S2(int position) {
        if (position >= getData().size()) {
            return 0;
        }
        int iR2 = R2(position);
        getData().remove(position);
        int i11 = iR2 + 1;
        return i11;
    }

    private final int Z1(int position, boolean isChangeChildCollapse, boolean animate, boolean notify, Object parentPayload) {
        o6.b bVar = (o6.b) getData().get(position);
        if (bVar instanceof o6.a) {
            o6.a aVar = (o6.a) bVar;
            if (aVar.b()) {
                int iA0 = position + a0();
                aVar.c(false);
                List listA = bVar.a();
                if (listA != null && !listA.isEmpty()) {
                    List listA2 = bVar.a();
                    Intrinsics.e(listA2);
                    List<o6.b> listI2 = I2(listA2, isChangeChildCollapse ? Boolean.FALSE : null);
                    int size = listI2.size();
                    getData().removeAll(listI2);
                    if (notify) {
                        if (animate) {
                            notifyItemChanged(iA0, parentPayload);
                            notifyItemRangeRemoved(iA0 + 1, size);
                        } else {
                            notifyDataSetChanged();
                        }
                    }
                    return size;
                }
                notifyItemChanged(iA0, parentPayload);
            }
        }
        return 0;
    }

    public static /* synthetic */ int a2(g gVar, int i11, boolean z10, boolean z11, Object obj, int i12, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: collapse");
        }
        if ((i12 & 2) != 0) {
            z10 = true;
        }
        if ((i12 & 4) != 0) {
            z11 = true;
        }
        if ((i12 & 8) != 0) {
            obj = null;
        }
        return gVar.Y1(i11, z10, z11, obj);
    }

    static /* synthetic */ int b2(g gVar, int i11, boolean z10, boolean z11, boolean z12, Object obj, int i12, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: collapse");
        }
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        boolean z13 = z10;
        boolean z14 = (i12 & 4) != 0 ? true : z11;
        boolean z15 = (i12 & 8) != 0 ? true : z12;
        if ((i12 & 16) != 0) {
            obj = null;
        }
        return gVar.Z1(i11, z13, z14, z15, obj);
    }

    public static /* synthetic */ int g2(g gVar, int i11, boolean z10, boolean z11, Object obj, int i12, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: collapseAndChild");
        }
        if ((i12 & 2) != 0) {
            z10 = true;
        }
        if ((i12 & 4) != 0) {
            z11 = true;
        }
        if ((i12 & 8) != 0) {
            obj = null;
        }
        return gVar.f2(i11, z10, z11, obj);
    }

    private final int l2(int position, boolean isChangeChildExpand, boolean animate, boolean notify, Object parentPayload) {
        o6.b bVar = (o6.b) getData().get(position);
        if (bVar instanceof o6.a) {
            o6.a aVar = (o6.a) bVar;
            if (!aVar.b()) {
                int iA0 = a0() + position;
                aVar.c(true);
                List listA = bVar.a();
                if (listA != null && !listA.isEmpty()) {
                    List listA2 = bVar.a();
                    Intrinsics.e(listA2);
                    List<o6.b> listI2 = I2(listA2, isChangeChildExpand ? Boolean.TRUE : null);
                    int size = listI2.size();
                    getData().addAll(position + 1, listI2);
                    if (notify) {
                        if (animate) {
                            notifyItemChanged(iA0, parentPayload);
                            notifyItemRangeInserted(iA0 + 1, size);
                        } else {
                            notifyDataSetChanged();
                        }
                    }
                    return size;
                }
                notifyItemChanged(iA0, parentPayload);
            }
        }
        return 0;
    }

    public static /* synthetic */ int m2(g gVar, int i11, boolean z10, boolean z11, Object obj, int i12, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expand");
        }
        if ((i12 & 2) != 0) {
            z10 = true;
        }
        if ((i12 & 4) != 0) {
            z11 = true;
        }
        if ((i12 & 8) != 0) {
            obj = null;
        }
        return gVar.k2(i11, z10, z11, obj);
    }

    static /* synthetic */ int n2(g gVar, int i11, boolean z10, boolean z11, boolean z12, Object obj, int i12, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expand");
        }
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        boolean z13 = z10;
        boolean z14 = (i12 & 4) != 0 ? true : z11;
        boolean z15 = (i12 & 8) != 0 ? true : z12;
        if ((i12 & 16) != 0) {
            obj = null;
        }
        return gVar.l2(i11, z13, z14, z15, obj);
    }

    public static /* synthetic */ int s2(g gVar, int i11, boolean z10, boolean z11, Object obj, int i12, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandAndChild");
        }
        if ((i12 & 2) != 0) {
            z10 = true;
        }
        if ((i12 & 4) != 0) {
            z11 = true;
        }
        if ((i12 & 8) != 0) {
            obj = null;
        }
        return gVar.r2(i11, z10, z11, obj);
    }

    @JvmOverloads
    public final int B2(int i11) {
        return F2(this, i11, false, false, null, 14, null);
    }

    @JvmOverloads
    public final int C2(int i11, boolean z10) {
        return F2(this, i11, z10, false, null, 12, null);
    }

    @JvmOverloads
    public final int D2(int i11, boolean z10, boolean z11) {
        return F2(this, i11, z10, z11, null, 8, null);
    }

    @JvmOverloads
    public final int E2(int position, boolean animate, boolean notify, Object parentPayload) {
        o6.b bVar = (o6.b) getData().get(position);
        if (bVar instanceof o6.a) {
            return ((o6.a) bVar).b() ? Z1(position, false, animate, notify, parentPayload) : l2(position, false, animate, notify, parentPayload);
        }
        return 0;
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    public void F1(BaseItemProvider provider) {
        Intrinsics.h(provider, "provider");
        if (!(provider instanceof com.chad.library.adapter.base.provider.a)) {
            throw new IllegalStateException("Please add BaseNodeProvider, no BaseItemProvider!");
        }
        super.F1(provider);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void G0(int position) {
        notifyItemRangeRemoved(position + a0(), S2(position));
        E(0);
    }

    public final int G2(int position) {
        if (position == 0) {
            return -1;
        }
        o6.b bVar = (o6.b) getData().get(position);
        for (int i11 = position - 1; -1 < i11; i11--) {
            List listA = ((o6.b) getData().get(i11)).a();
            if (listA != null && listA.contains(bVar)) {
                return i11;
            }
        }
        return -1;
    }

    public final int H2(o6.b node) {
        Intrinsics.h(node, "node");
        int iIndexOf = getData().indexOf(node);
        if (iIndexOf != -1 && iIndexOf != 0) {
            for (int i11 = iIndexOf - 1; -1 < i11; i11--) {
                List listA = ((o6.b) getData().get(i11)).a();
                if (listA != null && listA.contains(node)) {
                    return i11;
                }
            }
        }
        return -1;
    }

    public final void K2(o6.b parentNode, int childIndex, Collection<? extends o6.b> newData) {
        Intrinsics.h(parentNode, "parentNode");
        Intrinsics.h(newData, "newData");
        List listA = parentNode.a();
        if (listA != null) {
            listA.addAll(childIndex, newData);
            if (!(parentNode instanceof o6.a) || ((o6.a) parentNode).b()) {
                o(getData().indexOf(parentNode) + 1 + childIndex, newData);
            }
        }
    }

    public final void L2(o6.b parentNode, int childIndex, o6.b data) {
        Intrinsics.h(parentNode, "parentNode");
        Intrinsics.h(data, "data");
        List listA = parentNode.a();
        if (listA != null) {
            listA.add(childIndex, data);
            if (!(parentNode instanceof o6.a) || ((o6.a) parentNode).b()) {
                n(getData().indexOf(parentNode) + 1 + childIndex, data);
            }
        }
    }

    public final void M2(o6.b parentNode, o6.b data) {
        Intrinsics.h(parentNode, "parentNode");
        Intrinsics.h(data, "data");
        List listA = parentNode.a();
        if (listA != null) {
            listA.add(data);
            if (!(parentNode instanceof o6.a) || ((o6.a) parentNode).b()) {
                n(getData().indexOf(parentNode) + listA.size(), data);
            }
        }
    }

    public final void N2(o6.b parentNode, int childIndex) {
        Intrinsics.h(parentNode, "parentNode");
        List listA = parentNode.a();
        if (listA == null || childIndex >= listA.size()) {
            return;
        }
        if ((parentNode instanceof o6.a) && !((o6.a) parentNode).b()) {
            listA.remove(childIndex);
        } else {
            C0(getData().indexOf(parentNode) + 1 + childIndex);
        }
    }

    public final void O2(o6.b parentNode, o6.b childNode) {
        Intrinsics.h(parentNode, "parentNode");
        Intrinsics.h(childNode, "childNode");
        List listA = parentNode.a();
        if (listA != null) {
            if ((parentNode instanceof o6.a) && !((o6.a) parentNode).b()) {
                listA.remove(childNode);
            } else {
                D0(childNode);
                listA.remove(childNode);
            }
        }
    }

    public final void P2(o6.b parentNode, Collection<? extends o6.b> newData) {
        Intrinsics.h(parentNode, "parentNode");
        Intrinsics.h(newData, "newData");
        List listA = parentNode.a();
        if (listA != null) {
            if ((parentNode instanceof o6.a) && !((o6.a) parentNode).b()) {
                listA.clear();
                listA.addAll(newData);
                return;
            }
            int iIndexOf = getData().indexOf(parentNode);
            int iR2 = R2(iIndexOf);
            listA.clear();
            listA.addAll(newData);
            List listJ2 = J2(this, newData, null, 2, null);
            int i11 = iIndexOf + 1;
            getData().addAll(i11, listJ2);
            int iA0 = i11 + a0();
            if (iR2 == listJ2.size()) {
                notifyItemRangeChanged(iA0, iR2);
            } else {
                notifyItemRangeRemoved(iA0, iR2);
                notifyItemRangeInserted(iA0, listJ2.size());
            }
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: Q1, reason: merged with bridge method [inline-methods] */
    public void n(int position, o6.b data) {
        Intrinsics.h(data, "data");
        o(position, CollectionsKt.h(data));
    }

    public final void Q2(o6.b parentNode, int childIndex, o6.b data) {
        Intrinsics.h(parentNode, "parentNode");
        Intrinsics.h(data, "data");
        List listA = parentNode.a();
        if (listA == null || childIndex >= listA.size()) {
            return;
        }
        if ((parentNode instanceof o6.a) && !((o6.a) parentNode).b()) {
            listA.set(childIndex, data);
        } else {
            P0(getData().indexOf(parentNode) + 1 + childIndex, data);
            listA.set(childIndex, data);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: R1, reason: merged with bridge method [inline-methods] */
    public void p(o6.b data) {
        Intrinsics.h(data, "data");
        q(CollectionsKt.h(data));
    }

    public final void S1(com.chad.library.adapter.base.provider.a provider) {
        Intrinsics.h(provider, "provider");
        T1(provider);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void T0(DiffUtil.d diffResult, List<o6.b> list) {
        Intrinsics.h(diffResult, "diffResult");
        Intrinsics.h(list, "list");
        if (q0()) {
            q1(list);
        } else {
            super.T0(diffResult, J2(this, list, null, 2, null));
        }
    }

    public final void T1(com.chad.library.adapter.base.provider.a provider) {
        Intrinsics.h(provider, "provider");
        this.fullSpanNodeTypeSet.add(Integer.valueOf(provider.l()));
        F1(provider);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: T2, reason: merged with bridge method [inline-methods] */
    public void P0(int index, o6.b data) {
        Intrinsics.h(data, "data");
        int iS2 = S2(index);
        List listJ2 = J2(this, CollectionsKt.h(data), null, 2, null);
        getData().addAll(index, listJ2);
        if (iS2 == listJ2.size()) {
            notifyItemRangeChanged(index + a0(), iS2);
        } else {
            notifyItemRangeRemoved(a0() + index, iS2);
            notifyItemRangeInserted(index + a0(), listJ2.size());
        }
    }

    public final void U1(com.chad.library.adapter.base.provider.a provider) {
        Intrinsics.h(provider, "provider");
        F1(provider);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void V0(List<o6.b> list, Runnable commitCallback) {
        if (q0()) {
            q1(list);
        } else {
            super.V0(J2(this, list != null ? list : new ArrayList(), null, 2, null), commitCallback);
        }
    }

    @JvmOverloads
    public final int V1(int i11) {
        return a2(this, i11, false, false, null, 14, null);
    }

    @JvmOverloads
    public final int W1(int i11, boolean z10) {
        return a2(this, i11, z10, false, null, 12, null);
    }

    @JvmOverloads
    public final int X1(int i11, boolean z10, boolean z11) {
        return a2(this, i11, z10, z11, null, 8, null);
    }

    @JvmOverloads
    public final int Y1(int position, boolean animate, boolean notify, Object parentPayload) {
        return Z1(position, false, animate, notify, parentPayload);
    }

    @JvmOverloads
    public final int c2(int i11) {
        return g2(this, i11, false, false, null, 14, null);
    }

    @JvmOverloads
    public final int d2(int i11, boolean z10) {
        return g2(this, i11, z10, false, null, 12, null);
    }

    @JvmOverloads
    public final int e2(int i11, boolean z10, boolean z11) {
        return g2(this, i11, z10, z11, null, 8, null);
    }

    @JvmOverloads
    public final int f2(int position, boolean animate, boolean notify, Object parentPayload) {
        return Z1(position, true, animate, notify, parentPayload);
    }

    @JvmOverloads
    public final int h2(int i11) {
        return m2(this, i11, false, false, null, 14, null);
    }

    @JvmOverloads
    public final int i2(int i11, boolean z10) {
        return m2(this, i11, z10, false, null, 12, null);
    }

    @JvmOverloads
    public final int j2(int i11, boolean z10, boolean z11) {
        return m2(this, i11, z10, z11, null, 8, null);
    }

    @JvmOverloads
    public final int k2(int position, boolean animate, boolean notify, Object parentPayload) {
        return l2(position, false, animate, notify, parentPayload);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void n1(Collection<? extends o6.b> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        super.n1(J2(this, list, null, 2, null));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void o(int position, Collection<? extends o6.b> newData) {
        Intrinsics.h(newData, "newData");
        super.o(position, J2(this, newData, null, 2, null));
    }

    @JvmOverloads
    public final int o2(int i11) {
        return s2(this, i11, false, false, null, 14, null);
    }

    @JvmOverloads
    public final int p2(int i11, boolean z10) {
        return s2(this, i11, z10, false, null, 12, null);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void q(Collection<? extends o6.b> newData) {
        Intrinsics.h(newData, "newData");
        super.q(J2(this, newData, null, 2, null));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void q1(List<o6.b> list) {
        super.q1(J2(this, list != null ? list : new ArrayList(), null, 2, null));
    }

    @JvmOverloads
    public final int q2(int i11, boolean z10, boolean z11) {
        return s2(this, i11, z10, z11, null, 8, null);
    }

    @JvmOverloads
    public final int r2(int position, boolean animate, boolean notify, Object parentPayload) {
        return l2(position, true, animate, notify, parentPayload);
    }

    @JvmOverloads
    public final void t2(int i11) {
        A2(this, i11, false, false, false, false, null, null, 126, null);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected boolean u0(int type) {
        return super.u0(type) || this.fullSpanNodeTypeSet.contains(Integer.valueOf(type));
    }

    @JvmOverloads
    public final void u2(int i11, boolean z10) {
        A2(this, i11, z10, false, false, false, null, null, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, null);
    }

    @JvmOverloads
    public final void v2(int i11, boolean z10, boolean z11) {
        A2(this, i11, z10, z11, false, false, null, null, 120, null);
    }

    @JvmOverloads
    public final void w2(int i11, boolean z10, boolean z11, boolean z12) {
        A2(this, i11, z10, z11, z12, false, null, null, 112, null);
    }

    @JvmOverloads
    public final void x2(int i11, boolean z10, boolean z11, boolean z12, boolean z13) {
        A2(this, i11, z10, z11, z12, z13, null, null, 96, null);
    }

    @JvmOverloads
    public final void y2(int i11, boolean z10, boolean z11, boolean z12, boolean z13, Object obj) {
        A2(this, i11, z10, z11, z12, z13, obj, null, 64, null);
    }

    @JvmOverloads
    public final void z2(int position, boolean isExpandedChild, boolean isCollapseChild, boolean animate, boolean notify, Object expandPayload, Object collapsePayload) {
        int i11;
        int size;
        int iL2 = l2(position, isExpandedChild, animate, notify, expandPayload);
        if (iL2 == 0) {
            return;
        }
        int iG2 = G2(position);
        int i12 = iG2 == -1 ? 0 : iG2 + 1;
        if (position - i12 > 0) {
            int i13 = i12;
            i11 = position;
            do {
                int iZ1 = Z1(i13, isCollapseChild, animate, notify, collapsePayload);
                i13++;
                i11 -= iZ1;
            } while (i13 < i11);
        } else {
            i11 = position;
        }
        if (iG2 == -1) {
            size = getData().size() - 1;
        } else {
            List listA = ((o6.b) getData().get(iG2)).a();
            size = iG2 + (listA != null ? listA.size() : 0) + iL2;
        }
        int i14 = i11 + iL2;
        if (i14 < size) {
            int i15 = i14 + 1;
            while (i15 <= size) {
                int iZ2 = Z1(i15, isCollapseChild, animate, notify, collapsePayload);
                i15++;
                size -= iZ2;
            }
        }
    }
}

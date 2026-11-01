package ov;

import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class e {
    public static final UGCVideoBelongToCollection a(UGCVideoBelongToCollection uGCVideoBelongToCollection) {
        Intrinsics.h(uGCVideoBelongToCollection, "<this>");
        return new UGCVideoBelongToCollection(uGCVideoBelongToCollection.getCollectionId(), uGCVideoBelongToCollection.getCollectionName(), uGCVideoBelongToCollection.getVideoNum(), null, uGCVideoBelongToCollection.getDescImage(), 8, null);
    }
}

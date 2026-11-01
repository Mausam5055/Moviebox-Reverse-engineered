package com.transsion.home.adapter.suboperate;

import com.transsion.edcation.CourseManager;
import com.transsion.edcation.bean.CourseBean;
import com.transsion.home.bean.BannerBean;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RankingListData;
import com.transsion.home.bean.RankingListItem;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.Iterator;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.c;
import kotlinx.coroutines.flow.x0;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.adapter.suboperate.SubTabAdapter$registerCourse$1", f = "SubTabAdapter.kt", l = {288}, m = "invokeSuspend")
final class SubTabAdapter$registerCourse$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ SubTabAdapter this$0;

    static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SubTabAdapter f44418a;

        a(SubTabAdapter subTabAdapter) {
            this.f44418a = subTabAdapter;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(CourseBean courseBean, Continuation continuation) {
            List<Subject> rankings;
            List<RankingListItem> items;
            List<BannerData> banners;
            Subject feedsSubject;
            int i11 = 0;
            for (Object obj : this.f44418a.getData()) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                OperateItem operateItem = (OperateItem) obj;
                String type = operateItem.getType();
                if (Intrinsics.c(type, PostItemType.SUBJECT.getValue())) {
                    Subject feedsSubject2 = operateItem.getFeedsSubject();
                    if (Intrinsics.c(feedsSubject2 != null ? feedsSubject2.getSubjectId() : null, courseBean.getSubjectId()) && (feedsSubject = operateItem.getFeedsSubject()) != null) {
                        feedsSubject.setSeenStatus(Boxing.d(courseBean.getSeenStatus()));
                    }
                } else if (Intrinsics.c(type, PostItemType.BANNER.getValue())) {
                    BannerBean banner = operateItem.getBanner();
                    if (banner != null && (banners = banner.getBanners()) != null) {
                        for (BannerData bannerData : banners) {
                            if (Intrinsics.c(bannerData != null ? bannerData.getSubjectId() : null, courseBean.getSubjectId()) && bannerData != null) {
                                bannerData.setSeenStatus(Boxing.d(courseBean.getSeenStatus()));
                            }
                        }
                    }
                } else if (Intrinsics.c(type, PostItemType.RANKING_LIST.getValue())) {
                    RankingListData rankingListData = operateItem.getRankingListData();
                    if (rankingListData != null && (items = rankingListData.getItems()) != null) {
                        Iterator<T> it = items.iterator();
                        while (it.hasNext()) {
                            List<Subject> subjects = ((RankingListItem) it.next()).getSubjects();
                            if (subjects != null) {
                                for (Subject subject : subjects) {
                                    if (Intrinsics.c(subject.getSubjectId(), courseBean.getSubjectId())) {
                                        subject.setSeenStatus(Boxing.d(courseBean.getSeenStatus()));
                                    }
                                }
                            }
                        }
                    }
                } else if (Intrinsics.c(type, PostItemType.OP_RANKING.getValue()) && (rankings = operateItem.getRankings()) != null) {
                    for (Subject subject2 : rankings) {
                        if (Intrinsics.c(subject2.getSubjectId(), courseBean.getSubjectId())) {
                            subject2.setSeenStatus(Boxing.d(courseBean.getSeenStatus()));
                        }
                    }
                }
                i11 = i12;
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubTabAdapter$registerCourse$1(SubTabAdapter subTabAdapter, Continuation<? super SubTabAdapter$registerCourse$1> continuation) {
        super(2, continuation);
        this.this$0 = subTabAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubTabAdapter$registerCourse$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubTabAdapter$registerCourse$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            x0 x0VarK = CourseManager.f44085a.k();
            a aVar = new a(this.this$0);
            this.label = 1;
            if (x0VarK.a(aVar, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        throw new KotlinNothingValueException();
    }
}

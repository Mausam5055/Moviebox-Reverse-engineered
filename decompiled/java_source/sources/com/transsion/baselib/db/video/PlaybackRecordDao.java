package com.transsion.baselib.db.video;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes5.dex */
public interface PlaybackRecordDao {

    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object a(PlaybackRecordDao playbackRecordDao, PlaybackRecordTable playbackRecordTable, Continuation continuation) throws Throwable {
            PlaybackRecordDao$insertOrUpdate$1 playbackRecordDao$insertOrUpdate$1;
            if (continuation instanceof PlaybackRecordDao$insertOrUpdate$1) {
                playbackRecordDao$insertOrUpdate$1 = (PlaybackRecordDao$insertOrUpdate$1) continuation;
                int i11 = playbackRecordDao$insertOrUpdate$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    playbackRecordDao$insertOrUpdate$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    playbackRecordDao$insertOrUpdate$1 = new PlaybackRecordDao$insertOrUpdate$1(continuation);
                }
            } else {
                playbackRecordDao$insertOrUpdate$1 = new PlaybackRecordDao$insertOrUpdate$1(continuation);
            }
            Object objA = playbackRecordDao$insertOrUpdate$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = playbackRecordDao$insertOrUpdate$1.label;
            if (i12 == 0) {
                ResultKt.b(objA);
                String subjectId = playbackRecordTable.getSubjectId();
                int se2 = playbackRecordTable.getSe();
                int ep2 = playbackRecordTable.getEp();
                playbackRecordDao$insertOrUpdate$1.L$0 = playbackRecordDao;
                playbackRecordDao$insertOrUpdate$1.L$1 = playbackRecordTable;
                playbackRecordDao$insertOrUpdate$1.label = 1;
                objA = playbackRecordDao.a(subjectId, se2, ep2, playbackRecordDao$insertOrUpdate$1);
                if (objA == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    if (i12 == 2) {
                        ResultKt.b(objA);
                        return Unit.f67061a;
                    }
                    if (i12 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objA);
                    return Unit.f67061a;
                }
                playbackRecordTable = (PlaybackRecordTable) playbackRecordDao$insertOrUpdate$1.L$1;
                playbackRecordDao = (PlaybackRecordDao) playbackRecordDao$insertOrUpdate$1.L$0;
                ResultKt.b(objA);
            }
            if (objA == null) {
                playbackRecordDao$insertOrUpdate$1.L$0 = null;
                playbackRecordDao$insertOrUpdate$1.L$1 = null;
                playbackRecordDao$insertOrUpdate$1.label = 2;
                if (playbackRecordDao.c(playbackRecordTable, playbackRecordDao$insertOrUpdate$1) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            }
            playbackRecordDao$insertOrUpdate$1.L$0 = null;
            playbackRecordDao$insertOrUpdate$1.L$1 = null;
            playbackRecordDao$insertOrUpdate$1.label = 3;
            if (playbackRecordDao.d(playbackRecordTable, playbackRecordDao$insertOrUpdate$1) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
    }

    Object a(String str, int i11, int i12, Continuation continuation);

    Object b(PlaybackRecordTable playbackRecordTable, Continuation continuation);

    Object c(PlaybackRecordTable playbackRecordTable, Continuation continuation);

    Object d(PlaybackRecordTable playbackRecordTable, Continuation continuation);
}

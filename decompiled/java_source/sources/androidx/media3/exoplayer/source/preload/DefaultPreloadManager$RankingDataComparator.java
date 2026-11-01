package androidx.media3.exoplayer.source.preload;

import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
final class DefaultPreloadManager$RankingDataComparator implements Comparator<Integer> {
    public int currentPlayingIndex = -1;

    @Override // java.util.Comparator
    public int compare(Integer num, Integer num2) {
        return Integer.compare(Math.abs(num.intValue() - this.currentPlayingIndex), Math.abs(num2.intValue() - this.currentPlayingIndex));
    }
}

package o9;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.x;

/* JADX INFO: loaded from: classes4.dex */
abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String[] f70833a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    private static CommentFrame a(int i11, d0 d0Var) {
        int iN = d0Var.n();
        if (d0Var.n() == 1684108385) {
            d0Var.Q(8);
            String strY = d0Var.y(iN - 16);
            return new CommentFrame(C.LANGUAGE_UNDETERMINED, strY, strY);
        }
        s.i("MetadataUtil", "Failed to parse comment attribute: " + a.a(i11));
        return null;
    }

    private static ApicFrame b(d0 d0Var) {
        String str;
        int iN = d0Var.n();
        if (d0Var.n() != 1684108385) {
            s.i("MetadataUtil", "Failed to parse cover art attribute");
            return null;
        }
        int iB = a.b(d0Var.n());
        if (iB == 13) {
            str = "image/jpeg";
        } else {
            str = iB == 14 ? "image/png" : null;
        }
        if (str == null) {
            s.i("MetadataUtil", "Unrecognized cover art flags: " + iB);
            return null;
        }
        d0Var.Q(4);
        int i11 = iN - 16;
        byte[] bArr = new byte[i11];
        d0Var.j(bArr, 0, i11);
        return new ApicFrame(str, null, 3, bArr);
    }

    public static Metadata.Entry c(d0 d0Var) {
        int iE = d0Var.e() + d0Var.n();
        int iN = d0Var.n();
        int i11 = (iN >> 24) & 255;
        try {
            if (i11 == 169 || i11 == 253) {
                int i12 = 16777215 & iN;
                if (i12 == 6516084) {
                    CommentFrame commentFrameA = a(iN, d0Var);
                    d0Var.P(iE);
                    return commentFrameA;
                }
                if (i12 == 7233901 || i12 == 7631467) {
                    TextInformationFrame textInformationFrameH = h(iN, "TIT2", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH;
                }
                if (i12 == 6516589 || i12 == 7828084) {
                    TextInformationFrame textInformationFrameH2 = h(iN, "TCOM", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH2;
                }
                if (i12 == 6578553) {
                    TextInformationFrame textInformationFrameH3 = h(iN, "TDRC", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH3;
                }
                if (i12 == 4280916) {
                    TextInformationFrame textInformationFrameH4 = h(iN, "TPE1", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH4;
                }
                if (i12 == 7630703) {
                    TextInformationFrame textInformationFrameH5 = h(iN, "TSSE", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH5;
                }
                if (i12 == 6384738) {
                    TextInformationFrame textInformationFrameH6 = h(iN, "TALB", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH6;
                }
                if (i12 == 7108978) {
                    TextInformationFrame textInformationFrameH7 = h(iN, "USLT", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH7;
                }
                if (i12 == 6776174) {
                    TextInformationFrame textInformationFrameH8 = h(iN, "TCON", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH8;
                }
                if (i12 == 6779504) {
                    TextInformationFrame textInformationFrameH9 = h(iN, "TIT1", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH9;
                }
            } else {
                if (iN == 1735291493) {
                    TextInformationFrame textInformationFrameG = g(d0Var);
                    d0Var.P(iE);
                    return textInformationFrameG;
                }
                if (iN == 1684632427) {
                    TextInformationFrame textInformationFrameD = d(iN, "TPOS", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameD;
                }
                if (iN == 1953655662) {
                    TextInformationFrame textInformationFrameD2 = d(iN, "TRCK", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameD2;
                }
                if (iN == 1953329263) {
                    Id3Frame id3FrameI = i(iN, "TBPM", d0Var, true, false);
                    d0Var.P(iE);
                    return id3FrameI;
                }
                if (iN == 1668311404) {
                    Id3Frame id3FrameI2 = i(iN, "TCMP", d0Var, true, true);
                    d0Var.P(iE);
                    return id3FrameI2;
                }
                if (iN == 1668249202) {
                    ApicFrame apicFrameB = b(d0Var);
                    d0Var.P(iE);
                    return apicFrameB;
                }
                if (iN == 1631670868) {
                    TextInformationFrame textInformationFrameH10 = h(iN, "TPE2", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH10;
                }
                if (iN == 1936682605) {
                    TextInformationFrame textInformationFrameH11 = h(iN, "TSOT", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH11;
                }
                if (iN == 1936679276) {
                    TextInformationFrame textInformationFrameH12 = h(iN, "TSO2", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH12;
                }
                if (iN == 1936679282) {
                    TextInformationFrame textInformationFrameH13 = h(iN, "TSOA", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH13;
                }
                if (iN == 1936679265) {
                    TextInformationFrame textInformationFrameH14 = h(iN, "TSOP", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH14;
                }
                if (iN == 1936679791) {
                    TextInformationFrame textInformationFrameH15 = h(iN, "TSOC", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH15;
                }
                if (iN == 1920233063) {
                    Id3Frame id3FrameI3 = i(iN, "ITUNESADVISORY", d0Var, false, false);
                    d0Var.P(iE);
                    return id3FrameI3;
                }
                if (iN == 1885823344) {
                    Id3Frame id3FrameI4 = i(iN, "ITUNESGAPLESS", d0Var, false, true);
                    d0Var.P(iE);
                    return id3FrameI4;
                }
                if (iN == 1936683886) {
                    TextInformationFrame textInformationFrameH16 = h(iN, "TVSHOWSORT", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH16;
                }
                if (iN == 1953919848) {
                    TextInformationFrame textInformationFrameH17 = h(iN, "TVSHOW", d0Var);
                    d0Var.P(iE);
                    return textInformationFrameH17;
                }
                if (iN == 757935405) {
                    Id3Frame id3FrameE = e(d0Var, iE);
                    d0Var.P(iE);
                    return id3FrameE;
                }
            }
            s.b("MetadataUtil", "Skipped unknown metadata entry: " + a.a(iN));
            d0Var.P(iE);
            return null;
        } catch (Throwable th2) {
            d0Var.P(iE);
            throw th2;
        }
    }

    private static TextInformationFrame d(int i11, String str, d0 d0Var) {
        int iN = d0Var.n();
        if (d0Var.n() == 1684108385 && iN >= 22) {
            d0Var.Q(10);
            int iJ = d0Var.J();
            if (iJ > 0) {
                String str2 = "" + iJ;
                int iJ2 = d0Var.J();
                if (iJ2 > 0) {
                    str2 = str2 + "/" + iJ2;
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        s.i("MetadataUtil", "Failed to parse index/count attribute: " + a.a(i11));
        return null;
    }

    private static Id3Frame e(d0 d0Var, int i11) {
        String strY = null;
        String strY2 = null;
        int i12 = -1;
        int i13 = -1;
        while (d0Var.e() < i11) {
            int iE = d0Var.e();
            int iN = d0Var.n();
            int iN2 = d0Var.n();
            d0Var.Q(4);
            if (iN2 == 1835360622) {
                strY = d0Var.y(iN - 12);
            } else if (iN2 == 1851878757) {
                strY2 = d0Var.y(iN - 12);
            } else {
                if (iN2 == 1684108385) {
                    i12 = iE;
                    i13 = iN;
                }
                d0Var.Q(iN - 12);
            }
        }
        if (strY == null || strY2 == null || i12 == -1) {
            return null;
        }
        d0Var.P(i12);
        d0Var.Q(16);
        return new InternalFrame(strY, strY2, d0Var.y(i13 - 16));
    }

    public static MdtaMetadataEntry f(d0 d0Var, int i11, String str) {
        while (true) {
            int iE = d0Var.e();
            if (iE >= i11) {
                return null;
            }
            int iN = d0Var.n();
            if (d0Var.n() == 1684108385) {
                int iN2 = d0Var.n();
                int iN3 = d0Var.n();
                int i12 = iN - 16;
                byte[] bArr = new byte[i12];
                d0Var.j(bArr, 0, i12);
                return new MdtaMetadataEntry(str, bArr, iN3, iN2);
            }
            d0Var.P(iE + iN);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0011  */
    private static TextInformationFrame g(d0 d0Var) {
        String str;
        int iJ = j(d0Var);
        if (iJ > 0) {
            String[] strArr = f70833a;
            if (iJ <= strArr.length) {
                str = strArr[iJ - 1];
            } else {
                str = null;
            }
        } else {
            str = null;
        }
        if (str != null) {
            return new TextInformationFrame("TCON", null, str);
        }
        s.i("MetadataUtil", "Failed to parse standard genre code");
        return null;
    }

    private static TextInformationFrame h(int i11, String str, d0 d0Var) {
        int iN = d0Var.n();
        if (d0Var.n() == 1684108385) {
            d0Var.Q(8);
            return new TextInformationFrame(str, null, d0Var.y(iN - 16));
        }
        s.i("MetadataUtil", "Failed to parse text attribute: " + a.a(i11));
        return null;
    }

    private static Id3Frame i(int i11, String str, d0 d0Var, boolean z10, boolean z11) {
        int iJ = j(d0Var);
        if (z11) {
            iJ = Math.min(1, iJ);
        }
        if (iJ >= 0) {
            return z10 ? new TextInformationFrame(str, null, Integer.toString(iJ)) : new CommentFrame(C.LANGUAGE_UNDETERMINED, str, Integer.toString(iJ));
        }
        s.i("MetadataUtil", "Failed to parse uint8 attribute: " + a.a(i11));
        return null;
    }

    private static int j(d0 d0Var) {
        d0Var.Q(4);
        if (d0Var.n() == 1684108385) {
            d0Var.Q(8);
            return d0Var.D();
        }
        s.i("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    public static void k(int i11, x xVar, o1.b bVar) {
        if (i11 == 1 && xVar.a()) {
            bVar.N(xVar.f63475a).O(xVar.f63476b);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003b  */
    public static void l(int i11, Metadata metadata, Metadata metadata2, o1.b bVar, Metadata... metadataArr) {
        Metadata metadata3 = new Metadata(new Metadata.Entry[0]);
        if (i11 == 1) {
            if (metadata == null) {
                metadata = metadata3;
                break;
            }
        } else {
            if (i11 != 2 || metadata2 == null) {
                metadata = metadata3;
                break;
            }
            int i12 = 0;
            while (true) {
                if (i12 >= metadata2.length()) {
                    metadata = metadata3;
                    break;
                }
                Metadata.Entry entry = metadata2.get(i12);
                if (entry instanceof MdtaMetadataEntry) {
                    MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entry;
                    if (MdtaMetadataEntry.KEY_ANDROID_CAPTURE_FPS.equals(mdtaMetadataEntry.key)) {
                        metadata = new Metadata(mdtaMetadataEntry);
                        break;
                    }
                }
                i12++;
            }
        }
        for (Metadata metadata4 : metadataArr) {
            metadata = metadata.copyWithAppendedEntriesFrom(metadata4);
        }
        if (metadata.length() > 0) {
            bVar.X(metadata);
        }
    }
}

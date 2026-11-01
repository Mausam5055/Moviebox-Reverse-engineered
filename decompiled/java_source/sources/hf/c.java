package hf;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.TsExtractor;
import com.tencent.tinker.android.dex.DexException;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final jf.a f64430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f64431c;

    public c() {
        super(null);
        this.f64430b = new jf.a();
        this.f64431c = 0;
    }

    private void n(int i11) {
        int i12 = this.f64431c;
        if (i11 != i12) {
            this.f64430b.a(i11, i12);
        }
    }

    @Override // hf.e
    public void a(int i11, int i12, Object obj, int i13, int i14) {
        n(i11);
        int i15 = this.f64431c + 4;
        this.f64431c = i15;
        if (i14 == 1) {
            int length = ((byte[]) obj).length;
            this.f64431c = i15 + (length >> 1) + (length & 1);
            return;
        }
        if (i14 == 2) {
            this.f64431c = i15 + ((short[]) obj).length;
            return;
        }
        if (i14 == 4) {
            this.f64431c = i15 + (((int[]) obj).length * 2);
        } else {
            if (i14 == 8) {
                this.f64431c = i15 + (((long[]) obj).length * 4);
                return;
            }
            throw new DexException("bogus element_width: " + p008if.a.b(i14));
        }
    }

    @Override // hf.e
    public void b(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17, int i18, int i19, int i20) {
        n(i11);
        if (i12 != 36 && i12 != 252) {
            switch (i12) {
                case 110:
                case 111:
                case 112:
                case 113:
                case ASSET_WRITE_ERROR_VALUE:
                    break;
                default:
                    throw new IllegalStateException("unexpected opcode: " + p008if.a.c(i12));
            }
        }
        this.f64431c += 3;
    }

    @Override // hf.e
    public void c(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17, int i18, int i19) {
        n(i11);
        if (i12 != 36) {
            switch (i12) {
                case 110:
                case 111:
                case 112:
                case 113:
                case ASSET_WRITE_ERROR_VALUE:
                    break;
                default:
                    throw new IllegalStateException("unexpected opcode: " + p008if.a.c(i12));
            }
        }
        this.f64431c += 3;
    }

    @Override // hf.e
    public void d(int i11, int i12, int i13, int i14, int i15, int[] iArr) {
        if (i12 == 250) {
            this.f64431c += 4;
            return;
        }
        throw new IllegalStateException("unexpected opcode: " + p008if.a.c(i12));
    }

    @Override // hf.e
    public void e(int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        if (i12 == 251) {
            this.f64431c += 4;
            return;
        }
        throw new IllegalStateException("unexpected opcode: " + p008if.a.c(i12));
    }

    @Override // hf.e
    public void f(int i11, int i12, int i13, int i14, int i15, long j11, int i16) {
        n(i11);
        if (i12 != 34) {
            if (i12 != 36 && i12 != 38) {
                if (i12 != 39) {
                    if (i12 != 43 && i12 != 44) {
                        if (i12 != 254 && i12 != 255) {
                            switch (i12) {
                                default:
                                    switch (i12) {
                                        case 15:
                                        case 16:
                                        case 17:
                                        case 18:
                                        case NOTIFICATION_REDIRECT_VALUE:
                                        case 30:
                                            break;
                                        case 19:
                                        case 21:
                                        case 22:
                                        case 25:
                                        case 28:
                                        case TEMPLATE_HTML_SIZE_VALUE:
                                            break;
                                        case 20:
                                        case 23:
                                            break;
                                        case 24:
                                            this.f64431c += 5;
                                            return;
                                        case 26:
                                            if (i13 > 65535) {
                                                this.f64431c += 3;
                                                return;
                                            } else {
                                                this.f64431c += 2;
                                                return;
                                            }
                                        case 27:
                                            this.f64431c += 3;
                                            return;
                                        default:
                                            switch (i12) {
                                                default:
                                                    switch (i12) {
                                                        case 96:
                                                        case 97:
                                                        case 98:
                                                        case 99:
                                                        case 100:
                                                        case 101:
                                                        case 102:
                                                        case 103:
                                                        case 104:
                                                        case 105:
                                                        case 106:
                                                        case 107:
                                                        case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY /* 108 */:
                                                        case 109:
                                                            break;
                                                        case 110:
                                                        case 111:
                                                        case 112:
                                                        case 113:
                                                        case ASSET_WRITE_ERROR_VALUE:
                                                            break;
                                                        default:
                                                            throw new IllegalStateException("unexpected opcode: " + p008if.a.c(i12));
                                                    }
                                                case AD_VISIBILITY_VALUE:
                                                case 57:
                                                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                                                case 59:
                                                case 60:
                                                case 61:
                                                    this.f64431c += 2;
                                            }
                                            break;
                                    }
                                case 10:
                                case 11:
                                case 12:
                                case 13:
                                    this.f64431c++;
                                    return;
                            }
                        }
                    }
                }
                this.f64431c++;
                return;
            }
            this.f64431c += 3;
            return;
        }
        this.f64431c += 2;
    }

    @Override // hf.e
    public void g(int i11, int i12, int i13, int[] iArr) {
        n(i11);
        int i14 = this.f64431c + 4;
        this.f64431c = i14;
        this.f64431c = i14 + (iArr.length * 2);
    }

    @Override // hf.e
    public void h(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17) {
        n(i11);
        if (i12 != 37 && i12 != 253) {
            switch (i12) {
                case GZIP_ENCODE_ERROR_VALUE:
                case ASSET_FAILED_STATUS_CODE_VALUE:
                case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                case JSON_ENCODE_ERROR_VALUE:
                case 120:
                    break;
                default:
                    throw new IllegalStateException("unexpected opcode: " + p008if.a.c(i12));
            }
        }
        this.f64431c += 3;
    }

    @Override // hf.e
    public void i(int i11, int i12, int[] iArr, int[] iArr2) {
        n(i11);
        int i13 = this.f64431c + 2;
        this.f64431c = i13;
        int length = i13 + (iArr.length * 2);
        this.f64431c = length;
        this.f64431c = length + (iArr2.length * 2);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002e A[FALL_THROUGH] */
    @Override // hf.e
    public void j(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17, int i18) {
        n(i11);
        if (i12 != 36) {
            switch (i12) {
                default:
                    switch (i12) {
                        default:
                            switch (i12) {
                                case 110:
                                case 111:
                                case 112:
                                case 113:
                                case ASSET_WRITE_ERROR_VALUE:
                                    break;
                                default:
                                    switch (i12) {
                                        case 144:
                                        case 145:
                                        case 146:
                                        case 147:
                                        case 148:
                                        case 149:
                                        case 150:
                                        case 151:
                                        case 152:
                                        case 153:
                                        case 154:
                                        case 155:
                                        case 156:
                                        case 157:
                                        case 158:
                                        case 159:
                                        case 160:
                                        case 161:
                                        case 162:
                                        case 163:
                                        case 164:
                                        case 165:
                                        case 166:
                                        case 167:
                                        case 168:
                                        case 169:
                                        case 170:
                                        case 171:
                                        case 172:
                                        case 173:
                                        case 174:
                                        case 175:
                                            break;
                                        default:
                                            throw new IllegalStateException("unexpected opcode: " + p008if.a.c(i12));
                                    }
                                    break;
                            }
                        case 68:
                        case 69:
                        case 70:
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                        case 76:
                        case 77:
                        case 78:
                        case 79:
                        case 80:
                        case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW /* 81 */:
                            this.f64431c += 2;
                            return;
                    }
                case 45:
                case 46:
                case 47:
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    this.f64431c += 2;
                    return;
            }
        }
        this.f64431c += 3;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0055 A[FALL_THROUGH] */
    @Override // hf.e
    public void k(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17) {
        n(i11);
        if (i12 != 32) {
            if (i12 != 33) {
                if (i12 != 35) {
                    if (i12 != 36) {
                        switch (i12) {
                            case 1:
                            case 4:
                            case 7:
                                break;
                            case 2:
                            case 5:
                            case 8:
                                this.f64431c += 2;
                                return;
                            case 3:
                            case 6:
                            case 9:
                                break;
                            default:
                                switch (i12) {
                                    default:
                                        switch (i12) {
                                            default:
                                                switch (i12) {
                                                    case 110:
                                                    case 111:
                                                    case 112:
                                                    case 113:
                                                    case ASSET_WRITE_ERROR_VALUE:
                                                        break;
                                                    default:
                                                        switch (i12) {
                                                            default:
                                                                switch (i12) {
                                                                    case 176:
                                                                    case 177:
                                                                    case 178:
                                                                    case 179:
                                                                    case 180:
                                                                    case 181:
                                                                    case 182:
                                                                    case 183:
                                                                    case 184:
                                                                    case 185:
                                                                    case 186:
                                                                    case 187:
                                                                    case 188:
                                                                    case PsExtractor.PRIVATE_STREAM_1 /* 189 */:
                                                                    case 190:
                                                                    case 191:
                                                                    case PsExtractor.AUDIO_STREAM /* 192 */:
                                                                    case 193:
                                                                    case 194:
                                                                    case 195:
                                                                    case 196:
                                                                    case 197:
                                                                    case 198:
                                                                    case 199:
                                                                    case 200:
                                                                    case 201:
                                                                    case AD_CONSUMED_VALUE:
                                                                    case AD_IS_LOADING_VALUE:
                                                                    case AD_ALREADY_LOADED_VALUE:
                                                                    case AD_IS_PLAYING_VALUE:
                                                                    case AD_ALREADY_FAILED_VALUE:
                                                                    case PLACEMENT_AD_TYPE_MISMATCH_VALUE:
                                                                        break;
                                                                    case INVALID_BID_PAYLOAD_VALUE:
                                                                    case INVALID_JSON_BID_PAYLOAD_VALUE:
                                                                    case AD_NOT_LOADED_VALUE:
                                                                    case 211:
                                                                    case PLACEMENT_SLEEP_VALUE:
                                                                    case INVALID_ADUNIT_BID_PAYLOAD_VALUE:
                                                                    case INVALID_GZIP_BID_PAYLOAD_VALUE:
                                                                    case AD_RESPONSE_EMPTY_VALUE:
                                                                    case AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE:
                                                                    case AD_RESPONSE_TIMED_OUT_VALUE:
                                                                    case MRAID_JS_DOES_NOT_EXIST_VALUE:
                                                                    case MRAID_JS_COPY_FAILED_VALUE:
                                                                    case AD_RESPONSE_RETRY_AFTER_VALUE:
                                                                    case AD_LOAD_FAIL_RETRY_AFTER_VALUE:
                                                                    case INVALID_WATERFALL_PLACEMENT_ID_VALUE:
                                                                    case STALE_CACHED_RESPONSE_VALUE:
                                                                    case 224:
                                                                    case 225:
                                                                    case 226:
                                                                        break;
                                                                    default:
                                                                        throw new IllegalStateException("unexpected opcode: " + p008if.a.c(i12));
                                                                }
                                                            case INVALID_RI_ENDPOINT_VALUE:
                                                            case INVALID_LOG_ERROR_ENDPOINT_VALUE:
                                                            case INVALID_METRICS_ENDPOINT_VALUE:
                                                            case 126:
                                                            case 127:
                                                            case 128:
                                                            case 129:
                                                            case 130:
                                                            case MRAID_JS_WRITE_FAILED_VALUE:
                                                            case OMSDK_DOWNLOAD_JS_ERROR_VALUE:
                                                            case OMSDK_JS_WRITE_FAILED_VALUE:
                                                            case 134:
                                                            case 135:
                                                            case PRIVACY_URL_ERROR_VALUE:
                                                            case TPAT_RETRY_FAILED_VALUE:
                                                            case 138:
                                                            case 139:
                                                            case 140:
                                                            case 141:
                                                            case 142:
                                                            case 143:
                                                                this.f64431c++;
                                                                return;
                                                        }
                                                        break;
                                                }
                                            case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW /* 82 */:
                                            case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW /* 83 */:
                                            case 84:
                                            case 85:
                                            case 86:
                                            case 87:
                                            case 88:
                                            case TsExtractor.TS_STREAM_TYPE_DVBSUBS /* 89 */:
                                            case TmcConstants.NOTIFY_ADDHOME_API_SHOW /* 90 */:
                                            case 91:
                                            case 92:
                                            case 93:
                                            case MBSupportMuteAdType.REWARD_VIDEO /* 94 */:
                                            case 95:
                                                this.f64431c += 2;
                                        }
                                    case 50:
                                    case AD_REWARD_USER_VALUE:
                                    case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                    case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                    case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                    case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                        this.f64431c += 2;
                                }
                                break;
                        }
                    }
                    this.f64431c += 3;
                    return;
                }
            }
            this.f64431c++;
            return;
        }
        this.f64431c += 2;
    }

    @Override // hf.e
    public void l(int i11, int i12, int i13, int i14, int i15, long j11) {
        n(i11);
        if (i12 == -1 || i12 == 0 || i12 == 14) {
            this.f64431c++;
            return;
        }
        if (i12 != 36) {
            switch (i12) {
                case 40:
                    int iQ = b.q(i15, this.f64431c);
                    if (iQ == ((byte) iQ)) {
                        this.f64431c++;
                        return;
                    } else if (iQ != ((short) iQ)) {
                        this.f64431c += 3;
                        return;
                    } else {
                        this.f64431c += 2;
                        return;
                    }
                case 41:
                    int iQ2 = b.q(i15, this.f64431c);
                    if (iQ2 != ((short) iQ2)) {
                        this.f64431c += 3;
                        return;
                    } else {
                        this.f64431c += 2;
                        return;
                    }
                case 42:
                    this.f64431c += 3;
                    return;
                default:
                    switch (i12) {
                        case 110:
                        case 111:
                        case 112:
                        case 113:
                        case ASSET_WRITE_ERROR_VALUE:
                            break;
                        default:
                            throw new IllegalStateException("unexpected opcode: " + p008if.a.c(i12));
                    }
                    break;
            }
        }
        this.f64431c += 3;
    }

    public int m(int i11) {
        int iK = this.f64430b.k(i11);
        return iK < 0 ? i11 : this.f64430b.p(iK);
    }
}

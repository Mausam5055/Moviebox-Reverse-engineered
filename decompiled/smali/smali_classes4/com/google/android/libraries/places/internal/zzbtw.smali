.class final Lcom/google/android/libraries/places/internal/zzbtw;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzbwf;

.field private static final zzb:[Lcom/google/android/libraries/places/internal/zzbtt;

.field private static final zzc:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 64

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbwf;->zza:Lcom/google/android/libraries/places/internal/zzbwe;

    const-string v0, ":"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtw;->zza:Lcom/google/android/libraries/places/internal/zzbwf;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtt;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtt;->zze:Lcom/google/android/libraries/places/internal/zzbwf;

    const-string v2, ""

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbtt;

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbtt;->zzb:Lcom/google/android/libraries/places/internal/zzbwf;

    const-string v4, "GET"

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    new-instance v4, Lcom/google/android/libraries/places/internal/zzbtt;

    const-string v5, "POST"

    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbtt;

    sget-object v5, Lcom/google/android/libraries/places/internal/zzbtt;->zzc:Lcom/google/android/libraries/places/internal/zzbwf;

    const-string v6, "/"

    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    new-instance v6, Lcom/google/android/libraries/places/internal/zzbtt;

    const-string v7, "/index.html"

    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    new-instance v5, Lcom/google/android/libraries/places/internal/zzbtt;

    sget-object v7, Lcom/google/android/libraries/places/internal/zzbtt;->zzd:Lcom/google/android/libraries/places/internal/zzbwf;

    const-string v8, "http"

    invoke-static {v8}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    new-instance v8, Lcom/google/android/libraries/places/internal/zzbtt;

    const-string v9, "https"

    invoke-static {v9}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    new-instance v7, Lcom/google/android/libraries/places/internal/zzbtt;

    sget-object v9, Lcom/google/android/libraries/places/internal/zzbtt;->zza:Lcom/google/android/libraries/places/internal/zzbwf;

    const-string v10, "200"

    invoke-static {v10}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    new-instance v10, Lcom/google/android/libraries/places/internal/zzbtt;

    const-string v11, "204"

    invoke-static {v11}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    new-instance v11, Lcom/google/android/libraries/places/internal/zzbtt;

    const-string v12, "206"

    invoke-static {v12}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    new-instance v12, Lcom/google/android/libraries/places/internal/zzbtt;

    const-string v13, "304"

    invoke-static {v13}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v13

    invoke-direct {v12, v9, v13}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    new-instance v13, Lcom/google/android/libraries/places/internal/zzbtt;

    const-string v14, "400"

    invoke-static {v14}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v14

    invoke-direct {v13, v9, v14}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    new-instance v14, Lcom/google/android/libraries/places/internal/zzbtt;

    const-string v15, "404"

    invoke-static {v15}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v15

    invoke-direct {v14, v9, v15}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    const-string v16, "500"

    move-object/from16 v17, v14

    invoke-static/range {v16 .. v16}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    move-result-object v14

    invoke-direct {v15, v9, v14}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    const-string v14, "accept-charset"

    invoke-direct {v9, v14, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v16, v9

    const-string v9, "accept-encoding"

    move-object/from16 v18, v15

    const-string v15, "gzip, deflate"

    invoke-direct {v14, v9, v15}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    const-string v15, "accept-language"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v19, v9

    const-string v9, "accept-ranges"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v20, v15

    const-string v15, "accept"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v21, v9

    const-string v9, "access-control-allow-origin"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v22, v15

    const-string v15, "age"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v23, v9

    const-string v9, "allow"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v24, v15

    const-string v15, "authorization"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v25, v9

    const-string v9, "cache-control"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v26, v15

    const-string v15, "content-disposition"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v27, v9

    const-string v9, "content-encoding"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v28, v15

    const-string v15, "content-language"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v29, v9

    const-string v9, "content-length"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v30, v15

    const-string v15, "content-location"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v31, v9

    const-string v9, "content-range"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v32, v15

    const-string v15, "content-type"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v33, v9

    const-string v9, "cookie"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v34, v15

    const-string v15, "date"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v35, v9

    const-string v9, "etag"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v36, v15

    const-string v15, "expect"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v37, v9

    const-string v9, "expires"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v38, v15

    const-string v15, "from"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v39, v9

    const-string v9, "host"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v40, v15

    const-string v15, "if-match"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v41, v9

    const-string v9, "if-modified-since"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v42, v15

    const-string v15, "if-none-match"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v43, v9

    const-string v9, "if-range"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v44, v15

    const-string v15, "if-unmodified-since"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v45, v9

    const-string v9, "last-modified"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v46, v15

    const-string v15, "link"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v47, v9

    const-string v9, "location"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v48, v15

    const-string v15, "max-forwards"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v49, v9

    const-string v9, "proxy-authenticate"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v50, v15

    const-string v15, "proxy-authorization"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v51, v9

    const-string v9, "range"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v52, v15

    const-string v15, "referer"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v53, v9

    const-string v9, "refresh"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v54, v15

    const-string v15, "retry-after"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v55, v9

    const-string v9, "server"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v56, v15

    const-string v15, "set-cookie"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v57, v9

    const-string v9, "strict-transport-security"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v58, v15

    const-string v15, "transfer-encoding"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v59, v9

    const-string v9, "user-agent"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v60, v15

    const-string v15, "vary"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v61, v9

    const-string v9, "via"

    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    move-object/from16 v62, v15

    const-string v15, "www-authenticate"

    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3d

    new-array v15, v2, [Lcom/google/android/libraries/places/internal/zzbtt;

    const/16 v63, 0x0

    aput-object v0, v15, v63

    const/4 v0, 0x1

    aput-object v1, v15, v0

    const/4 v1, 0x2

    aput-object v4, v15, v1

    const/4 v1, 0x3

    aput-object v3, v15, v1

    const/4 v1, 0x4

    aput-object v6, v15, v1

    const/4 v1, 0x5

    aput-object v5, v15, v1

    const/4 v1, 0x6

    aput-object v8, v15, v1

    const/4 v1, 0x7

    aput-object v7, v15, v1

    const/16 v1, 0x8

    aput-object v10, v15, v1

    const/16 v1, 0x9

    aput-object v11, v15, v1

    const/16 v1, 0xa

    aput-object v12, v15, v1

    const/16 v1, 0xb

    aput-object v13, v15, v1

    const/16 v1, 0xc

    aput-object v17, v15, v1

    const/16 v1, 0xd

    aput-object v18, v15, v1

    const/16 v1, 0xe

    aput-object v16, v15, v1

    const/16 v1, 0xf

    aput-object v14, v15, v1

    const/16 v1, 0x10

    aput-object v19, v15, v1

    const/16 v1, 0x11

    aput-object v20, v15, v1

    const/16 v1, 0x12

    aput-object v21, v15, v1

    const/16 v1, 0x13

    aput-object v22, v15, v1

    const/16 v1, 0x14

    aput-object v23, v15, v1

    const/16 v1, 0x15

    aput-object v24, v15, v1

    const/16 v1, 0x16

    aput-object v25, v15, v1

    const/16 v1, 0x17

    aput-object v26, v15, v1

    const/16 v1, 0x18

    aput-object v27, v15, v1

    const/16 v1, 0x19

    aput-object v28, v15, v1

    const/16 v1, 0x1a

    aput-object v29, v15, v1

    const/16 v1, 0x1b

    aput-object v30, v15, v1

    const/16 v1, 0x1c

    aput-object v31, v15, v1

    const/16 v1, 0x1d

    aput-object v32, v15, v1

    const/16 v1, 0x1e

    aput-object v33, v15, v1

    const/16 v1, 0x1f

    aput-object v34, v15, v1

    const/16 v1, 0x20

    aput-object v35, v15, v1

    const/16 v1, 0x21

    aput-object v36, v15, v1

    const/16 v1, 0x22

    aput-object v37, v15, v1

    const/16 v1, 0x23

    aput-object v38, v15, v1

    const/16 v1, 0x24

    aput-object v39, v15, v1

    const/16 v1, 0x25

    aput-object v40, v15, v1

    const/16 v1, 0x26

    aput-object v41, v15, v1

    const/16 v1, 0x27

    aput-object v42, v15, v1

    const/16 v1, 0x28

    aput-object v43, v15, v1

    const/16 v1, 0x29

    aput-object v44, v15, v1

    const/16 v1, 0x2a

    aput-object v45, v15, v1

    const/16 v1, 0x2b

    aput-object v46, v15, v1

    const/16 v1, 0x2c

    aput-object v47, v15, v1

    const/16 v1, 0x2d

    aput-object v48, v15, v1

    const/16 v1, 0x2e

    aput-object v49, v15, v1

    const/16 v1, 0x2f

    aput-object v50, v15, v1

    const/16 v1, 0x30

    aput-object v51, v15, v1

    const/16 v1, 0x31

    aput-object v52, v15, v1

    const/16 v1, 0x32

    aput-object v53, v15, v1

    const/16 v1, 0x33

    aput-object v54, v15, v1

    const/16 v1, 0x34

    aput-object v55, v15, v1

    const/16 v1, 0x35

    aput-object v56, v15, v1

    const/16 v1, 0x36

    aput-object v57, v15, v1

    const/16 v1, 0x37

    aput-object v58, v15, v1

    const/16 v1, 0x38

    aput-object v59, v15, v1

    const/16 v1, 0x39

    aput-object v60, v15, v1

    const/16 v1, 0x3a

    aput-object v61, v15, v1

    const/16 v1, 0x3b

    aput-object v62, v15, v1

    const/16 v1, 0x3c

    aput-object v9, v15, v1

    sput-object v15, Lcom/google/android/libraries/places/internal/zzbtw;->zzb:[Lcom/google/android/libraries/places/internal/zzbtt;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    move/from16 v3, v63

    :goto_0
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbtw;->zzb:[Lcom/google/android/libraries/places/internal/zzbtt;

    array-length v5, v4

    if-ge v3, v2, :cond_1

    aget-object v5, v4, v3

    iget-object v5, v5, Lcom/google/android/libraries/places/internal/zzbtt;->zzh:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzbtt;->zzh:Lcom/google/android/libraries/places/internal/zzbwf;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtw;->zzc:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic zza()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtw;->zzc:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtw;->zza:Lcom/google/android/libraries/places/internal/zzbwf;

    return-object v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/libraries/places/internal/zzbwf;)Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zzbwf;->zza(I)B

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzf()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method static bridge synthetic zzd()[Lcom/google/android/libraries/places/internal/zzbtt;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtw;->zzb:[Lcom/google/android/libraries/places/internal/zzbtt;

    return-object v0
.end method

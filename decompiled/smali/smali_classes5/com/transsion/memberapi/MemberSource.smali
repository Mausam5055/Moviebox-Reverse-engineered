.class public final enum Lcom/transsion/memberapi/MemberSource;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/memberapi/MemberSource;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0017\u001a\u00020\u0004H\u0016J\u0006\u0010\u0018\u001a\u00020\u0019J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0019R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/memberapi/MemberSource;",
        "Landroid/os/Parcelable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "SOURCE_HDDL",
        "SOURCE_MULTI_DL",
        "SOURCE_AD_DIALOG",
        "SOURCE_DOWNLOAD_DIALOG",
        "SOURCE_LANDSCAPE_PLAY",
        "SOURCE_OTHER_DOWNLOAD_DIALOG",
        "SOURCE_AD",
        "THREE_IN_ONE_POPUP",
        "SOURCE_STREAM_RESOLUTION_DIALOG",
        "SOURCE_STREAM_RESOLUTION_TIP",
        "SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR",
        "SOURCE_STREAM_RESOLUTION_ACTIVATE_DIALOG",
        "SOURCE_STREAM_RESOLUTION_ACTIVATE_DOWNLOAD_INTERCEPT",
        "SOURCE_MEMBER_PROMOTION",
        "toString",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "MemberApi_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/transsion/memberapi/MemberSource;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/memberapi/MemberSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SOURCE_AD:Lcom/transsion/memberapi/MemberSource;

.field public static final enum SOURCE_AD_DIALOG:Lcom/transsion/memberapi/MemberSource;

.field public static final enum SOURCE_DOWNLOAD_DIALOG:Lcom/transsion/memberapi/MemberSource;

.field public static final enum SOURCE_HDDL:Lcom/transsion/memberapi/MemberSource;

.field public static final enum SOURCE_LANDSCAPE_PLAY:Lcom/transsion/memberapi/MemberSource;

.field public static final enum SOURCE_MEMBER_PROMOTION:Lcom/transsion/memberapi/MemberSource;

.field public static final enum SOURCE_MULTI_DL:Lcom/transsion/memberapi/MemberSource;

.field public static final enum SOURCE_OTHER_DOWNLOAD_DIALOG:Lcom/transsion/memberapi/MemberSource;

.field public static final enum SOURCE_STREAM_RESOLUTION_ACTIVATE_DIALOG:Lcom/transsion/memberapi/MemberSource;

.field public static final enum SOURCE_STREAM_RESOLUTION_ACTIVATE_DOWNLOAD_INTERCEPT:Lcom/transsion/memberapi/MemberSource;

.field public static final enum SOURCE_STREAM_RESOLUTION_DIALOG:Lcom/transsion/memberapi/MemberSource;

.field public static final enum SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR:Lcom/transsion/memberapi/MemberSource;

.field public static final enum SOURCE_STREAM_RESOLUTION_TIP:Lcom/transsion/memberapi/MemberSource;

.field public static final enum THREE_IN_ONE_POPUP:Lcom/transsion/memberapi/MemberSource;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/memberapi/MemberSource;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/transsion/memberapi/MemberSource;

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->SOURCE_HDDL:Lcom/transsion/memberapi/MemberSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->SOURCE_MULTI_DL:Lcom/transsion/memberapi/MemberSource;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->SOURCE_AD_DIALOG:Lcom/transsion/memberapi/MemberSource;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->SOURCE_DOWNLOAD_DIALOG:Lcom/transsion/memberapi/MemberSource;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->SOURCE_LANDSCAPE_PLAY:Lcom/transsion/memberapi/MemberSource;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->SOURCE_OTHER_DOWNLOAD_DIALOG:Lcom/transsion/memberapi/MemberSource;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->SOURCE_AD:Lcom/transsion/memberapi/MemberSource;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->THREE_IN_ONE_POPUP:Lcom/transsion/memberapi/MemberSource;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_DIALOG:Lcom/transsion/memberapi/MemberSource;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_TIP:Lcom/transsion/memberapi/MemberSource;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR:Lcom/transsion/memberapi/MemberSource;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_ACTIVATE_DIALOG:Lcom/transsion/memberapi/MemberSource;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_ACTIVATE_DOWNLOAD_INTERCEPT:Lcom/transsion/memberapi/MemberSource;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->SOURCE_MEMBER_PROMOTION:Lcom/transsion/memberapi/MemberSource;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/memberapi/MemberSource;

    const/4 v1, 0x0

    const-string v2, "HDDL"

    const-string v3, "SOURCE_HDDL"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->SOURCE_HDDL:Lcom/transsion/memberapi/MemberSource;

    new-instance v0, Lcom/transsion/memberapi/MemberSource;

    const/4 v1, 0x1

    const-string v2, "Multi_DL_DIALOG"

    const-string v3, "SOURCE_MULTI_DL"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->SOURCE_MULTI_DL:Lcom/transsion/memberapi/MemberSource;

    new-instance v0, Lcom/transsion/memberapi/MemberSource;

    const/4 v1, 0x2

    const-string v2, "AD_DIALOG"

    const-string v3, "SOURCE_AD_DIALOG"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->SOURCE_AD_DIALOG:Lcom/transsion/memberapi/MemberSource;

    new-instance v0, Lcom/transsion/memberapi/MemberSource;

    const/4 v1, 0x3

    const-string v2, "DOWNLOAD_DIALOG"

    const-string v3, "SOURCE_DOWNLOAD_DIALOG"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->SOURCE_DOWNLOAD_DIALOG:Lcom/transsion/memberapi/MemberSource;

    new-instance v0, Lcom/transsion/memberapi/MemberSource;

    const/4 v1, 0x4

    const-string v2, "LANDSCAPE_PLAY"

    const-string v3, "SOURCE_LANDSCAPE_PLAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->SOURCE_LANDSCAPE_PLAY:Lcom/transsion/memberapi/MemberSource;

    new-instance v0, Lcom/transsion/memberapi/MemberSource;

    const/4 v1, 0x5

    const-string v2, "OTHER_DOWNLOAD_DIALOG"

    const-string v3, "SOURCE_OTHER_DOWNLOAD_DIALOG"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->SOURCE_OTHER_DOWNLOAD_DIALOG:Lcom/transsion/memberapi/MemberSource;

    new-instance v0, Lcom/transsion/memberapi/MemberSource;

    const-string v1, "SOURCE_AD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/memberapi/MemberSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->SOURCE_AD:Lcom/transsion/memberapi/MemberSource;

    new-instance v0, Lcom/transsion/memberapi/MemberSource;

    const-string v1, "THREE_IN_ONE_POPUP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/memberapi/MemberSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->THREE_IN_ONE_POPUP:Lcom/transsion/memberapi/MemberSource;

    new-instance v0, Lcom/transsion/memberapi/MemberSource;

    const/16 v1, 0x8

    const-string v2, "STREAM_RESOLUTION_DIALOG"

    const-string v3, "SOURCE_STREAM_RESOLUTION_DIALOG"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_DIALOG:Lcom/transsion/memberapi/MemberSource;

    new-instance v0, Lcom/transsion/memberapi/MemberSource;

    const/16 v1, 0x9

    const-string v2, "STREAM_RESOLUTION_TIP"

    const-string v3, "SOURCE_STREAM_RESOLUTION_TIP"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_TIP:Lcom/transsion/memberapi/MemberSource;

    new-instance v0, Lcom/transsion/memberapi/MemberSource;

    const-string v1, "SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/memberapi/MemberSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR:Lcom/transsion/memberapi/MemberSource;

    new-instance v0, Lcom/transsion/memberapi/MemberSource;

    const-string v1, "SOURCE_STREAM_RESOLUTION_ACTIVATE_DIALOG"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/memberapi/MemberSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_ACTIVATE_DIALOG:Lcom/transsion/memberapi/MemberSource;

    new-instance v0, Lcom/transsion/memberapi/MemberSource;

    const-string v1, "SOURCE_STREAM_RESOLUTION_ACTIVATE_DOWNLOAD_INTERCEPT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/memberapi/MemberSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_ACTIVATE_DOWNLOAD_INTERCEPT:Lcom/transsion/memberapi/MemberSource;

    new-instance v0, Lcom/transsion/memberapi/MemberSource;

    const/16 v1, 0xd

    const-string v2, "MEMBER_PROMOTION"

    const-string v3, "SOURCE_MEMBER_PROMOTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->SOURCE_MEMBER_PROMOTION:Lcom/transsion/memberapi/MemberSource;

    invoke-static {}, Lcom/transsion/memberapi/MemberSource;->$values()[Lcom/transsion/memberapi/MemberSource;

    move-result-object v0

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->$VALUES:[Lcom/transsion/memberapi/MemberSource;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/transsion/memberapi/MemberSource$a;

    invoke-direct {v0}, Lcom/transsion/memberapi/MemberSource$a;-><init>()V

    sput-object v0, Lcom/transsion/memberapi/MemberSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/memberapi/MemberSource;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/memberapi/MemberSource;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/memberapi/MemberSource;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/memberapi/MemberSource;
    .locals 1

    const-class v0, Lcom/transsion/memberapi/MemberSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/memberapi/MemberSource;

    return-object p0
.end method

.method public static values()[Lcom/transsion/memberapi/MemberSource;
    .locals 1

    sget-object v0, Lcom/transsion/memberapi/MemberSource;->$VALUES:[Lcom/transsion/memberapi/MemberSource;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/memberapi/MemberSource;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberSource;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberSource;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

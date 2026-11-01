.class public abstract Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;
.super Landroidx/room/RoomDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u0000 \u00072\u00020\u0001:\u0001\u0008B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "Lmu/a;",
        "l0",
        "()Lmu/a;",
        "p",
        "d",
        "SubtitleDownload_release"
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
.field public static final p:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;

.field private static volatile q:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;

.field private static final r:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$a;

.field private static final s:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$b;

.field private static final t:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->p:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;

    new-instance v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$a;

    invoke-direct {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$a;-><init>()V

    sput-object v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->r:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$a;

    new-instance v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$b;

    invoke-direct {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$b;-><init>()V

    sput-object v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->s:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$b;

    new-instance v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$c;

    invoke-direct {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$c;-><init>()V

    sput-object v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->t:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic g0()Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;
    .locals 1

    sget-object v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->q:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;

    return-object v0
.end method

.method public static final synthetic h0()Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$a;
    .locals 1

    sget-object v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->r:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$a;

    return-object v0
.end method

.method public static final synthetic i0()Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$b;
    .locals 1

    sget-object v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->s:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$b;

    return-object v0
.end method

.method public static final synthetic j0()Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$c;
    .locals 1

    sget-object v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->t:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$c;

    return-object v0
.end method

.method public static final synthetic k0(Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;)V
    .locals 0

    sput-object p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->q:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;

    return-void
.end method


# virtual methods
.method public abstract l0()Lmu/a;
.end method

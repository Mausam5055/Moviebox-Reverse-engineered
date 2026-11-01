.class public abstract Lcom/transsion/shorttv/db/ShortTvDatabase;
.super Landroidx/room/RoomDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/db/ShortTvDatabase$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/transsion/shorttv/db/ShortTvDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "Lcom/transsion/shorttv/db/ShortTvFavoriteDao;",
        "k0",
        "()Lcom/transsion/shorttv/db/ShortTvFavoriteDao;",
        "Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;",
        "j0",
        "()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;",
        "p",
        "b",
        "shortTvLib_release"
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
.field public static final p:Lcom/transsion/shorttv/db/ShortTvDatabase$b;

.field private static final q:Ly3/c;

.field private static volatile r:Lcom/transsion/shorttv/db/ShortTvDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv/db/ShortTvDatabase$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv/db/ShortTvDatabase$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv/db/ShortTvDatabase;->p:Lcom/transsion/shorttv/db/ShortTvDatabase$b;

    new-instance v0, Lcom/transsion/shorttv/db/ShortTvDatabase$a;

    invoke-direct {v0}, Lcom/transsion/shorttv/db/ShortTvDatabase$a;-><init>()V

    sput-object v0, Lcom/transsion/shorttv/db/ShortTvDatabase;->q:Ly3/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic g0()Lcom/transsion/shorttv/db/ShortTvDatabase;
    .locals 1

    sget-object v0, Lcom/transsion/shorttv/db/ShortTvDatabase;->r:Lcom/transsion/shorttv/db/ShortTvDatabase;

    return-object v0
.end method

.method public static final synthetic h0()Ly3/c;
    .locals 1

    sget-object v0, Lcom/transsion/shorttv/db/ShortTvDatabase;->q:Ly3/c;

    return-object v0
.end method

.method public static final synthetic i0(Lcom/transsion/shorttv/db/ShortTvDatabase;)V
    .locals 0

    sput-object p0, Lcom/transsion/shorttv/db/ShortTvDatabase;->r:Lcom/transsion/shorttv/db/ShortTvDatabase;

    return-void
.end method


# virtual methods
.method public abstract j0()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
.end method

.method public abstract k0()Lcom/transsion/shorttv/db/ShortTvFavoriteDao;
.end method

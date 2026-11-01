.class public abstract Landroidx/work/impl/WorkDatabase;
.super Landroidx/room/RoomDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/WorkDatabase$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u0000 \u00192\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/work/impl/WorkDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "Landroidx/work/impl/model/k0;",
        "l0",
        "()Landroidx/work/impl/model/k0;",
        "Landroidx/work/impl/model/b;",
        "g0",
        "()Landroidx/work/impl/model/b;",
        "Landroidx/work/impl/model/v1;",
        "m0",
        "()Landroidx/work/impl/model/v1;",
        "Landroidx/work/impl/model/q;",
        "i0",
        "()Landroidx/work/impl/model/q;",
        "Landroidx/work/impl/model/z;",
        "j0",
        "()Landroidx/work/impl/model/z;",
        "Landroidx/work/impl/model/e0;",
        "k0",
        "()Landroidx/work/impl/model/e0;",
        "Landroidx/work/impl/model/i;",
        "h0",
        "()Landroidx/work/impl/model/i;",
        "p",
        "a",
        "work-runtime_release"
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
.field public static final p:Landroidx/work/impl/WorkDatabase$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/impl/WorkDatabase$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/WorkDatabase$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/impl/WorkDatabase;->p:Landroidx/work/impl/WorkDatabase$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract g0()Landroidx/work/impl/model/b;
.end method

.method public abstract h0()Landroidx/work/impl/model/i;
.end method

.method public abstract i0()Landroidx/work/impl/model/q;
.end method

.method public abstract j0()Landroidx/work/impl/model/z;
.end method

.method public abstract k0()Landroidx/work/impl/model/e0;
.end method

.method public abstract l0()Landroidx/work/impl/model/k0;
.end method

.method public abstract m0()Landroidx/work/impl/model/v1;
.end method

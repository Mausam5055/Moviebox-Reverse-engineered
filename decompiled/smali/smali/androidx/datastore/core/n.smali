.class public abstract Landroidx/datastore/core/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/datastore/core/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/core/n$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/datastore/core/n$a;

.field private static final b:Ljava/lang/String;

.field private static final c:J

.field private static final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/core/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/core/n$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/datastore/core/n;->a:Landroidx/datastore/core/n$a;

    const-string v0, "Resource deadlock would occur"

    sput-object v0, Landroidx/datastore/core/n;->b:Ljava/lang/String;

    const-wide/16 v0, 0xa

    sput-wide v0, Landroidx/datastore/core/n;->c:J

    const-wide/32 v0, 0xea60

    sput-wide v0, Landroidx/datastore/core/n;->d:J

    return-void
.end method

.method public static final synthetic f(Landroidx/datastore/core/n;)Landroidx/datastore/core/q;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

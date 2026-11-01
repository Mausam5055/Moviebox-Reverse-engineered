.class public final Landroidx/work/impl/model/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/impl/model/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/n$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/work/impl/model/n$a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/impl/model/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/model/n$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/impl/model/n;->b:Landroidx/work/impl/model/n$a;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/n;->a:Landroidx/room/RoomDatabase;

    return-void
.end method

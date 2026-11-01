.class public final Landroidx/work/impl/r0;
.super Ly3/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x17

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Ly3/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public b(Lz3/b;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `WorkSpec` ADD COLUMN `backoff_on_system_interruptions` INTEGER DEFAULT NULL"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    return-void
.end method

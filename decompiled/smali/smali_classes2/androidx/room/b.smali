.class public final synthetic Landroidx/room/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/room/a;

.field public final synthetic b:Landroidx/room/a$b;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/a;Landroidx/room/a$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/b;->a:Landroidx/room/a;

    iput-object p2, p0, Landroidx/room/b;->b:Landroidx/room/a$b;

    iput-object p3, p0, Landroidx/room/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/room/b;->a:Landroidx/room/a;

    iget-object v1, p0, Landroidx/room/b;->b:Landroidx/room/a$b;

    iget-object v2, p0, Landroidx/room/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/room/a$b;->a(Landroidx/room/a;Landroidx/room/a$b;Ljava/lang/String;)Lz3/b;

    move-result-object v0

    return-object v0
.end method

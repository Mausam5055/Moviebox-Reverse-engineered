.class public final Lcom/transsion/room/fragment/RoomDetailFragmentNew$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/share/share/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomDetailFragmentNew;->m1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/fragment/RoomDetailFragmentNew;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomDetailFragmentNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/fragment/RoomDetailFragmentNew$d;->a:Lcom/transsion/room/fragment/RoomDetailFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/share/bean/PostType;)V
    .locals 0

    const-string p2, "id"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/share/share/a$a;->b(Lcom/transsion/share/share/a;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fileName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fileSize"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fileImage"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    const/4 v0, 0x2

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/room/fragment/RoomDetailFragmentNew$d;->a:Lcom/transsion/room/fragment/RoomDetailFragmentNew;

    invoke-static {p1}, Lcom/transsion/room/fragment/RoomDetailFragmentNew;->O0(Lcom/transsion/room/fragment/RoomDetailFragmentNew;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/room/fragment/RoomDetailFragmentNew$d;->a:Lcom/transsion/room/fragment/RoomDetailFragmentNew;

    invoke-virtual {v0}, Lcom/transsion/room/fragment/RoomBaseFragment;->p0()Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->x(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/share/share/a$a;->c(Lcom/transsion/share/share/a;Ljava/lang/String;)V

    return-void
.end method

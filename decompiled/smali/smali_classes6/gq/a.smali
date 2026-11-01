.class public final synthetic Lgq/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# instance fields
.field public final synthetic a:Lcom/transsion/room/sub/adapter/likes/b;

.field public final synthetic b:Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/sub/adapter/likes/b;Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgq/a;->a:Lcom/transsion/room/sub/adapter/likes/b;

    iput-object p2, p0, Lgq/a;->b:Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;

    return-void
.end method


# virtual methods
.method public final onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 2

    iget-object v0, p0, Lgq/a;->a:Lcom/transsion/room/sub/adapter/likes/b;

    iget-object v1, p0, Lgq/a;->b:Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;->f0(Lcom/transsion/room/sub/adapter/likes/b;Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

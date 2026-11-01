.class public final synthetic Lwo/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

.field public final synthetic b:Lwo/h;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/myactivity/MyActivityFragment;Lwo/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwo/d;->a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

    iput-object p2, p0, Lwo/d;->b:Lwo/h;

    return-void
.end method


# virtual methods
.method public final onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 2

    iget-object v0, p0, Lwo/d;->a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

    iget-object v1, p0, Lwo/d;->b:Lwo/h;

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/postdetail/myactivity/MyActivityFragment;->e0(Lcom/transsion/postdetail/myactivity/MyActivityFragment;Lwo/h;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

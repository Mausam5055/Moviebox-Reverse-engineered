.class public final synthetic Lxm/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/memberapi/MemberTaskItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxm/j;->a:Lcom/transsion/memberapi/MemberTaskItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lxm/j;->a:Lcom/transsion/memberapi/MemberTaskItem;

    invoke-static {v0}, Lxm/k;->g(Lcom/transsion/memberapi/MemberTaskItem;)V

    return-void
.end method

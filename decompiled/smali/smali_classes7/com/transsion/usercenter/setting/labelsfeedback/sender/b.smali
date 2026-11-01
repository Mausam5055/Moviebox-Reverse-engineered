.class public final synthetic Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/n0;

.field public final synthetic b:Landroidx/work/w;

.field public final synthetic c:Landroidx/lifecycle/LiveData;

.field public final synthetic d:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/n0;Landroidx/work/w;Landroidx/lifecycle/LiveData;Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;->a:Lkotlinx/coroutines/n0;

    iput-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;->b:Landroidx/work/w;

    iput-object p3, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;->c:Landroidx/lifecycle/LiveData;

    iput-object p4, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;->d:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;

    iput-object p5, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p6, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;->f:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

    iput-object p7, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;->a:Lkotlinx/coroutines/n0;

    iget-object v1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;->b:Landroidx/work/w;

    iget-object v2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;->c:Landroidx/lifecycle/LiveData;

    iget-object v3, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;->d:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;

    iget-object v4, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;->f:Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;

    iget-object v6, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/b;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$sendJson$1$1;->a(Lkotlinx/coroutines/n0;Landroidx/work/w;Landroidx/lifecycle/LiveData;Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender$a;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/usercenter/setting/labelsfeedback/sender/FBSender;Ljava/lang/String;)V

    return-void
.end method

.class public final synthetic Lcom/transsion/commercialization/task/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/task/TaskCenterProvider;

.field public final synthetic b:Lcom/transsion/memberapi/MemberSceneType;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/task/TaskCenterProvider;Lcom/transsion/memberapi/MemberSceneType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/task/p;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    iput-object p2, p0, Lcom/transsion/commercialization/task/p;->b:Lcom/transsion/memberapi/MemberSceneType;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/commercialization/task/p;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    iget-object v1, p0, Lcom/transsion/commercialization/task/p;->b:Lcom/transsion/memberapi/MemberSceneType;

    invoke-static {v0, v1, p1}, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->g(Lcom/transsion/commercialization/task/TaskCenterProvider;Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

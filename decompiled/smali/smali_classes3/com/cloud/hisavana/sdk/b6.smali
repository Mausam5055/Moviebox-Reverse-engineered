.class public final synthetic Lcom/cloud/hisavana/sdk/b6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Landroid/content/pm/ShortcutInfo$Builder;

.field public final synthetic c:Landroid/content/pm/ShortcutManager;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutManager;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b6;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/b6;->b:Landroid/content/pm/ShortcutInfo$Builder;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/b6;->c:Landroid/content/pm/ShortcutManager;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/b6;->d:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/b6;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b6;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b6;->b:Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/b6;->c:Landroid/content/pm/ShortcutManager;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/b6;->d:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/b6;->e:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/hisavana/sdk/y0;->b(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutManager;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

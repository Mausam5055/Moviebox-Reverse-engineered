.class public final Lcom/transsion/baselib/utils/ActivityPermissionUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/baselib/utils/ActivityPermissionUtil;

.field private static b:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/baselib/utils/ActivityPermissionUtil;

    invoke-direct {v0}, Lcom/transsion/baselib/utils/ActivityPermissionUtil;-><init>()V

    sput-object v0, Lcom/transsion/baselib/utils/ActivityPermissionUtil;->a:Lcom/transsion/baselib/utils/ActivityPermissionUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/baselib/utils/ActivityPermissionUtil;->e(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Lkotlin/jvm/functions/Function0;
    .locals 1

    sget-object v0, Lcom/transsion/baselib/utils/ActivityPermissionUtil;->b:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method private static final e(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p0, 0x0

    sput-object p0, Lcom/transsion/baselib/utils/ActivityPermissionUtil;->b:Lkotlin/jvm/functions/Function0;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/transsion/baselib/utils/ActivityPermissionUtil;->d(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lak/a;

    invoke-direct {v0, p4}, Lak/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v0, Lcom/transsion/baselib/utils/ActivityPermissionUtil;->b:Lkotlin/jvm/functions/Function0;

    sget-object p4, Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl;->Companion:Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl$a;

    invoke-virtual {p4, p1, p2, p3}, Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl$a;->c(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

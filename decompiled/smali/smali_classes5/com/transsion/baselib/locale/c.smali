.class public final synthetic Lcom/transsion/baselib/locale/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/locale/d;

.field public final synthetic b:Ljava/util/Locale;

.field public final synthetic c:Ljava/util/Locale;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/locale/d;Ljava/util/Locale;Ljava/util/Locale;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/locale/c;->a:Lcom/transsion/baselib/locale/d;

    iput-object p2, p0, Lcom/transsion/baselib/locale/c;->b:Ljava/util/Locale;

    iput-object p3, p0, Lcom/transsion/baselib/locale/c;->c:Ljava/util/Locale;

    iput-object p4, p0, Lcom/transsion/baselib/locale/c;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/baselib/locale/c;->a:Lcom/transsion/baselib/locale/d;

    iget-object v1, p0, Lcom/transsion/baselib/locale/c;->b:Ljava/util/Locale;

    iget-object v2, p0, Lcom/transsion/baselib/locale/c;->c:Ljava/util/Locale;

    iget-object v3, p0, Lcom/transsion/baselib/locale/c;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/baselib/locale/d$a;->a(Lcom/transsion/baselib/locale/d;Ljava/util/Locale;Ljava/util/Locale;Landroid/content/Context;)V

    return-void
.end method

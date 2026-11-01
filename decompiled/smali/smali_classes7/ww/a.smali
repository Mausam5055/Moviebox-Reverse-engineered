.class public final synthetic Lww/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lww/a;->a:Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lww/a;->a:Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;->o0(Lcom/transsion/usercenter/setting/dialog/LocaleLanguageListDialog;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

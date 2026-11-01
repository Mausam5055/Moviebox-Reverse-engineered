.class public final synthetic Lju/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle/view/SubtitleOptionsView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle/view/SubtitleOptionsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lju/a;->a:Lcom/transsion/subtitle/view/SubtitleOptionsView;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object v0, p0, Lju/a;->a:Lcom/transsion/subtitle/view/SubtitleOptionsView;

    invoke-static {v0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->i(Lcom/transsion/subtitle/view/SubtitleOptionsView;Landroid/widget/RadioGroup;I)V

    return-void
.end method

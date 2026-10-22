-- La quantité d'une commande doit être positive : le test échoue si cette requête renvoie des lignes
select
    order_id,
    quantity
from {{ ref('stg_orders') }}
where quantity <= 0

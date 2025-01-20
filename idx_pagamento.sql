-- 6. Calcular o total arrecadado com pagamentos de mensalidades por mês
SELECT DATE_FORMAT(hp.data_pagamento, '%Y-%m') AS mes_ano, SUM(hp.valor) AS total_receitas
FROM HISTORICO_PAGAMENTO hp
WHERE hp.data_pagamento IS NOT NULL
GROUP BY DATE_FORMAT(hp.data_pagamento, '%Y-%m')
ORDER BY mes_ano DESC;

EXPLAIN SELECT DATE_FORMAT(hp.data_pagamento, '%Y-%m') AS mes_ano, SUM(hp.valor) AS total_receitas
FROM HISTORICO_PAGAMENTO hp
WHERE hp.data_pagamento IS NOT NULL
GROUP BY DATE_FORMAT(hp.data_pagamento, '%Y-%m')
ORDER BY mes_ano DESC;

CREATE INDEX idx_historico_pagamento_data_pagamento ON HISTORICO_PAGAMENTO(data_pagamento);
DROP INDEX idx_historico_pagamento_data_pagamento ON HISTORICO_PAGAMENTO;


using LinearAlgebra

function GS_MOD(A)
    m, n = size(A)
    Q = zeros(m, n)
    R = zeros(n, n)
    for j = 1:n
        v = A[:, j]
        for i = 1:j-1
            R[i, j] = dot(Q[:, i], A[:, j])
            v = v - R[i, j]*Q[:, i]
        end
        R[j, j] = norm(v)
        Q[:, j] = v/R[j, j]
    end
    return Q, R
end
using LinearAlgebra

function GS_MOD(A)
    m, n = size(A)
    Q = zeros(m, n)
    R = zeros(n, n)

    u = []
    for i = 1:n
        push!(u, A[:, i])
    end
    for k = 1:n
        R[k, k] = norm(u[k])
        Q[:, k] = u[k]/R[k, k]
        for j = k+1:n
            R[k, j] = dot(Q[:, k], u[j])
            u[j] = u[j] - R[k, j]*Q[:, k]
        end
    end
    return Q, R
end
function GS_MOD_LOG(A)
    print("Algoritmo de Gram-Schmidt MODIFICADO\n")
    m, n = size(A)
    Q = zeros(m, n)
    R = zeros(n, n)

    kValues = []
    print("Para k = ")
    for k = 1:n
        print(k, " ")
    end

    print("faça\n")

    u = []
    for i = 1:n
        push!(u, A[:, i])
        print("\tu$i = A[:, $i] => ", u[i], "\n")
    end


    for k = 1:n
        print("\tPara k = $k faça:\n")
        # v = u[k]
        # print("\t\tu$k = A(:, $k) => ", v, "\n")
        print("\t\tr[$k, $k] = norm(u$k) => ", round.((norm(u[k])); digits = 5), "\n")
        print("\t\tw$k = u$k/r[$k, $k] => ", round.((u[k]/norm(u[k])); digits = 5), "\n") # Q[:, k] = v/R[k, k
        R[k, k] = norm(u[k])
        Q[:, k] = u[k]/R[k, k]
        for j = k+1:n
            print("\t\tPara j = $j faça:\n")
            print("\t\t\tR[$k, $j] = w$k'*u$j => ", round.((dot(Q[:, k], u[j])); digits = 5), "\n")
            R[k, j] = dot(Q[:, k], u[j])
            print("\t\t\tu$j = u$j - R[$k, $j]*w$k => ", round.((u[j] - R[k, j]*Q[:, k]); digits = 5), "\n")
            # v = A[:, j] - R[k, j]*Q[:, k]
            # v = v - R[k, j]*Q[:, k]
            u[j] = u[j] - R[k, j]*Q[:, k]
        end
        print("\n")
    end
    return Q, R
end